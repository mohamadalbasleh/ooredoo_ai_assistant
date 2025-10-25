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

// Model configuration - using llama3.2 for best speed
const MODEL_NAME = process.env.OLLAMA_MODEL || 'llama3.2';
const MAX_TOKENS = 150; // Reduced for faster responses
const TEMPERATURE = 0.2; // Lower for more consistent responses

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
 * Build system prompt with ALL available data context
 * @param {string} language - 'ar' or 'en'
 * @returns {string} - System prompt with data context
 */
function buildSystemPrompt(language) {
  if (language === 'ar') {
    let prompt = `أنت مساعد أوريدو للشركات في قطر. أجب بإيجاز ووضوح بالعربية.

لديك معلومات عن:
- خدمات أوريدو للشركات (إنترنت، سحابة، أمن سيبراني، مكالمات)
- الأسئلة الشائعة وحلول المشاكل التقنية
- تاريخ الشكاوى والحلول السابقة
- بيانات العملاء الحاليين`;

    // Add FAQ context if available
    if (arabicFAQsContext) {
      const faqSample = arabicFAQsContext.substring(0, 1000); // First 1000 chars
      prompt += `\n\nأسئلة شائعة:\n${faqSample}`;
    }

    // Add product context if available
    if (arabicProductsContext) {
      prompt += `\n\nمنتجات متاحة:\n${arabicProductsContext.substring(0, 800)}`;
    }

    return prompt;
  } else {
    let prompt = `You are an Ooredoo B2B assistant in Qatar. Answer briefly and clearly in English.

You have access to:
- Ooredoo business services (Internet, Cloud, Security, Voice)
- FAQs and technical troubleshooting guides
- Historical customer tickets and resolutions
- Current customer database`;

    // Add product context if available
    if (englishProductsContext) {
      prompt += `\n\nAvailable Products:\n${englishProductsContext.substring(0, 800)}`;
    }

    // Add tickets context sample
    if (ticketsContext) {
      prompt += `\n\nRecent Support Patterns:\n${ticketsContext.substring(0, 500)}`;
    }

    return prompt;
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
    
    // Call Ollama API
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
        top_p: 0.9,
        top_k: 40
      },
      stream: false
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
