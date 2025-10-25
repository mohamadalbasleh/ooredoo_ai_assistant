// backend/src/services/ollama.js
// Ollama-based AI service with Arabic and English support
// Replaces OpenAI to reduce API costs

const { Ollama } = require('ollama');
const fs = require('fs');
const path = require('path');

// Initialize Ollama client
const ollama = new Ollama({
  host: process.env.OLLAMA_HOST || 'http://127.0.0.1:11434'
});

// Model configuration - OPTIMIZED FOR SPEED
const MODEL_NAME = process.env.OLLAMA_MODEL || 'llama3.2';
const MAX_TOKENS = 80; // Reduced to 80 for even faster responses
const TEMPERATURE = 0.1; // Lower for faster, more deterministic responses
const CONTEXT_SIZE = 1024; // Even smaller context window (was 2048)

// In-memory data cache - ALL data files loaded into context
let arabicCRMContext = '';
let englishCRMContext = '';
let arabicFAQsContext = '';
let arabicProductsContext = '';
let englishProductsContext = '';
let ticketsContext = '';
let isContextLoaded = false;

/**
 * Load ALL data from data directory into memory for context injection
 * This includes: CRM data, FAQs, Products, and Historical Tickets
 */
function loadCRMData() {
  if (isContextLoaded) return;

  try {
    const dataDir = path.join(__dirname, '../../data');
    
    // 1. Load Arabic CRM data
    const arabicCRMPath = path.join(dataDir, 'arabic_crm.sql');
    if (fs.existsSync(arabicCRMPath)) {
      const arabicSQL = fs.readFileSync(arabicCRMPath, 'utf-8');
      const arabicLines = arabicSQL.split('\n').filter(line => line.startsWith('INSERT INTO customers'));
      arabicCRMContext = arabicLines.slice(0, 10).join('\n');
      console.log('[ollama] ✅ Loaded Arabic CRM data (10 customer records)');
    }

    // 2. Load English CRM data
    const englishCRMPath = path.join(dataDir, 'english_crm.sql');
    if (fs.existsSync(englishCRMPath)) {
      const englishSQL = fs.readFileSync(englishCRMPath, 'utf-8');
      const englishLines = englishSQL.split('\n').filter(line => line.startsWith('INSERT INTO customers'));
      englishCRMContext = englishLines.slice(0, 10).join('\n');
      console.log('[ollama] ✅ Loaded English CRM data (10 customer records)');
    }

    // 3. Load Arabic FAQs & Troubleshooting
    const arabicFAQPath = path.join(dataDir, 'faqs_troubleshooting_arabic.txt');
    if (fs.existsSync(arabicFAQPath)) {
      arabicFAQsContext = fs.readFileSync(arabicFAQPath, 'utf-8');
      const faqCount = (arabicFAQsContext.match(/السؤال:/g) || []).length;
      console.log(`[ollama] ✅ Loaded Arabic FAQs (${faqCount} questions)`);
    }

    // 4. Load Arabic Products
    const arabicProductsPath = path.join(dataDir, 'products_arabic.json');
    if (fs.existsSync(arabicProductsPath)) {
      const productsData = JSON.parse(fs.readFileSync(arabicProductsPath, 'utf-8'));
      // Store top 20 products for context (avoid overwhelming the model)
      arabicProductsContext = JSON.stringify(productsData.slice(0, 20), null, 2);
      console.log(`[ollama] ✅ Loaded Arabic Products (${productsData.length} total, using top 20)`);
    }

    // 5. Load English Products
    const englishProductsPath = path.join(dataDir, 'products_english.json');
    if (fs.existsSync(englishProductsPath)) {
      const productsData = JSON.parse(fs.readFileSync(englishProductsPath, 'utf-8'));
      // Store top 20 products for context
      englishProductsContext = JSON.stringify(productsData.slice(0, 20), null, 2);
      console.log(`[ollama] ✅ Loaded English Products (${productsData.length} total, using top 20)`);
    }

    // 6. Load Historical Customer Tickets
    const ticketsPath = path.join(dataDir, 'historical_customer_tickets.csv');
    if (fs.existsSync(ticketsPath)) {
      const ticketsCSV = fs.readFileSync(ticketsPath, 'utf-8');
      // Load first 20 lines for context
      const ticketLines = ticketsCSV.split('\n').slice(0, 21); // Header + 20 tickets
      ticketsContext = ticketLines.join('\n');
      console.log(`[ollama] ✅ Loaded Historical Tickets (20 recent tickets for context)`);
    }

    isContextLoaded = true;
    console.log('[ollama] 🎯 ALL data files loaded successfully');
  } catch (error) {
    console.error('[ollama] ⚠️  Error loading data:', error.message);
  }
}

/**
 * Detect if text is primarily Arabic or English
 * @param {string} text - Input text to analyze
 * @returns {string} - 'ar' for Arabic, 'en' for English
 */
function detectLanguage(text) {
  if (!text) return 'en';
  
  // Count Arabic Unicode characters (U+0600 to U+06FF)
  const arabicChars = (text.match(/[\u0600-\u06FF]/g) || []).length;
  const totalChars = text.replace(/\s/g, '').length;
  
  // If more than 30% Arabic characters, consider it Arabic
  const isArabic = totalChars > 0 && (arabicChars / totalChars) > 0.3;
  
  return isArabic ? 'ar' : 'en';
}

/**
 * Build system prompt with minimal context for SPEED
 * @param {string} language - 'ar' or 'en'
 * @returns {string} - Compact system prompt
 */
function buildSystemPrompt(language) {
  if (language === 'ar') {
    // Minimal Arabic prompt - NO data context for speed
    return `أنت مساعد أوريدو للشركات في قطر. أجب بإيجاز وبشكل مباشر.

خدمات متوفرة: إنترنت فايبر، سحابة، أمن سيبراني، اتصالات صوتية، Microsoft 365.`;
  } else {
    // Minimal English prompt - NO data context for speed
    return `You are Ooredoo B2B assistant in Qatar. Answer briefly and directly.

Available: Fiber Internet, Cloud, Security, Voice, Microsoft 365.`;
  }
}

/**
 * Main chat function using Ollama
 * @param {string} message - User message
 * @param {string} customerId - Optional customer ID for personalization
 * @returns {Promise<string|null>} - AI response or null if error
 */
async function ollamaChat(message, customerId = null) {
  if (!message) {
    console.log('[ollama] ⚠️  No message provided');
    return null;
  }

  // Load CRM data if not already loaded
  loadCRMData();

  try {
    // Detect language
    const language = detectLanguage(message);
    console.log(`[ollama] 🌐 Detected language: ${language === 'ar' ? 'Arabic' : 'English'}`);

    // Build system prompt with CRM context
    const systemPrompt = buildSystemPrompt(language);

    // Add customer context if ID provided
    let userMessage = message;
    if (customerId) {
      const customerContext = language === 'ar' 
        ? `\n\n[معلومات العميل: ${customerId}]`
        : `\n\n[Customer ID: ${customerId}]`;
      userMessage = message + customerContext;
    }

    console.log('[ollama] 📤 Sending message to Ollama...');
    
    // Call Ollama API with SPEED-OPTIMIZED parameters
    const response = await ollama.chat({
      model: MODEL_NAME,
      messages: [
        {
          role: 'system',
          content: systemPrompt
        },
        {
          role: 'user',
          content: userMessage
        }
      ],
      options: {
        temperature: TEMPERATURE,
        num_predict: MAX_TOKENS,
        num_ctx: CONTEXT_SIZE, // Smaller context = faster
        top_p: 0.7, // Reduced from 0.9 for speed
        top_k: 20,  // Reduced from 40 for speed
        repeat_penalty: 1.1,
        num_thread: 4, // Use 4 threads for parallel processing
        num_gpu: 1, // Use GPU if available (fallback to CPU)
        num_batch: 512 // Batch size for faster processing
      },
      stream: false,
      keep_alive: '10m' // Keep model in memory longer
    });

    const reply = response.message?.content || null;
    
    if (reply) {
      console.log('[ollama] ✅ Response received:', reply.substring(0, 100) + '...');
    } else {
      console.log('[ollama] ⚠️  Empty response from Ollama');
    }

    return reply;

  } catch (error) {
    console.error('[ollama] ❌ Error:', error.message);
    
    // Provide helpful error messages
    if (error.message.includes('ECONNREFUSED')) {
      console.error('[ollama] 💡 Tip: Make sure Ollama is running. Start it with: ollama serve');
    } else if (error.message.includes('model')) {
      console.error(`[ollama] 💡 Tip: Model '${MODEL_NAME}' not found. Pull it with: ollama pull ${MODEL_NAME}`);
    }
    
    return null;
  }
}

/**
 * Check Ollama service health
 * @returns {Promise<boolean>} - true if Ollama is running
 */
async function checkOllamaHealth() {
  try {
    const response = await ollama.list();
    console.log('[ollama] ✅ Ollama is running');
    console.log('[ollama] 📋 Available models:', response.models.map(m => m.name).join(', '));
    return true;
  } catch (error) {
    console.error('[ollama] ❌ Ollama is not running or not accessible');
    console.error('[ollama] 💡 Please install and start Ollama: https://ollama.com/download');
    return false;
  }
}

/**
 * Initialize and verify Ollama setup
 */
async function initializeOllama() {
  console.log('[ollama] 🚀 Initializing Ollama service...');
  
  const isHealthy = await checkOllamaHealth();
  
  if (isHealthy) {
    loadCRMData();
    console.log('[ollama] ✅ Ollama service initialized successfully');
  } else {
    console.log('[ollama] ⚠️  Ollama service not available - API will return fallback responses');
  }
}

// Initialize on module load
initializeOllama();

module.exports = { 
  ollamaChat, 
  checkOllamaHealth,
  detectLanguage,
  loadCRMData
};
