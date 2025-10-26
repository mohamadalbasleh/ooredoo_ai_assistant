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

// Model configuration - OPTIMIZED FOR ARABIC & ENGLISH
const MODEL_NAME = process.env.OLLAMA_MODEL || 'llama3.1:8b';
const MAX_TOKENS = 400; // Balanced for detailed responses
const TEMPERATURE = 0.3; // Slightly higher for better Arabic fluency
const CONTEXT_SIZE = 6144; // Optimized for 8B model performance

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
      arabicCRMContext = arabicLines.join('\n'); // Load ALL CRM data
      console.log(`[ollama] ✅ Loaded Arabic CRM data (${arabicLines.length} customer records - ALL)`);
    }

    // 2. Load English CRM data
    const englishCRMPath = path.join(dataDir, 'english_crm.sql');
    if (fs.existsSync(englishCRMPath)) {
      const englishSQL = fs.readFileSync(englishCRMPath, 'utf-8');
      const englishLines = englishSQL.split('\n').filter(line => line.startsWith('INSERT INTO customers'));
      englishCRMContext = englishLines.join('\n'); // Load ALL CRM data
      console.log(`[ollama] ✅ Loaded English CRM data (${englishLines.length} customer records - ALL)`);
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
      arabicProductsContext = JSON.stringify(productsData, null, 2); // Load ALL products
      console.log(`[ollama] ✅ Loaded Arabic Products (${productsData.length} products - ALL)`);
    }

    // 5. Load English Products
    const englishProductsPath = path.join(dataDir, 'products_english.json');
    if (fs.existsSync(englishProductsPath)) {
      const productsData = JSON.parse(fs.readFileSync(englishProductsPath, 'utf-8'));
      englishProductsContext = JSON.stringify(productsData, null, 2); // Load ALL products
      console.log(`[ollama] ✅ Loaded English Products (${productsData.length} products - ALL)`);
    }

    // 6. Load Historical Customer Tickets
    const ticketsPath = path.join(dataDir, 'historical_customer_tickets.csv');
    if (fs.existsSync(ticketsPath)) {
      ticketsContext = fs.readFileSync(ticketsPath, 'utf-8'); // Load COMPLETE file
      const ticketCount = ticketsContext.split('\n').length - 1; // -1 for header
      console.log(`[ollama] ✅ Loaded Historical Tickets (${ticketCount} tickets - ALL)`);
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
    // Arabic prompt with relevant context - Enhanced for better dialect understanding
    return `أنت مساعد خدمة العملاء الذكي لأوريدو للشركات في قطر. 
    
تعليمات:
- أجب بالعربية الفصحى البسيطة والواضحة
- افهم جميع اللهجات العربية (الخليجية، المصرية، الشامية، المغاربية)
- كن ودوداً ومحترفاً ومباشراً
- أعط إجابات مختصرة وعملية

الخدمات المتاحة: إنترنت فايبر، خدمات سحابية، أمن سيبراني، اتصالات صوتية، Microsoft 365

${arabicFAQsContext ? `دليل الأسئلة الشائعة:\n${arabicFAQsContext.substring(0, 2000)}` : ''}

${arabicProductsContext ? `منتجاتنا:\n${arabicProductsContext.substring(0, 1500)}` : ''}

${ticketsContext ? `حلول سابقة:\n${ticketsContext.substring(0, 1000)}` : ''}`;
  } else {
    // English prompt with relevant context
    return `You are Ooredoo Business customer service AI assistant in Qatar.

Instructions:
- Answer in clear, professional English
- Be friendly, helpful, and direct
- Provide concise, actionable responses
- Understand different English accents and phrasings

Available Services: Fiber Internet, Cloud Services, Cybersecurity, Voice, Microsoft 365

${arabicFAQsContext ? `FAQ & Troubleshooting:\n${arabicFAQsContext.substring(0, 2000)}` : ''}

${englishProductsContext ? `Our Products:\n${englishProductsContext.substring(0, 1500)}` : ''}

${ticketsContext ? `Previous Solutions:\n${ticketsContext.substring(0, 1000)}` : ''}`;
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
    
    // Call Ollama API with optimized parameters for Llama 3.1 8B
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
        num_ctx: CONTEXT_SIZE,
        top_p: 0.9,
        top_k: 40,
        repeat_penalty: 1.1,
        num_thread: 8, // Increased for 8B model
        num_gpu: 1,
        num_batch: 512
      },
      stream: false,
      keep_alive: '15m' // Keep model in memory longer for faster responses
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
