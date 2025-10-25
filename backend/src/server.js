// backend/src/server.js
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { initDb, getCustomerById, getTicketsForCustomer, searchFaqs, recommendForCustomer } = require('./services/data');
const { ollamaChat, checkOllamaHealth } = require('./services/ollama');

const app = express();
app.use(cors());
app.use(express.json());

// ✅ Initialize database
initDb();

// ✅ Root route (fixes "Cannot GET /")
app.get('/', (req, res) => {
  res.send(`
    <h2>🚀 Ooredoo CRM Backend</h2>
    <p>Status: <strong>Running</strong></p>
    <p>Available endpoints:</p>
    <ul>
      <li><a href="/api/health">/api/health</a> — check server health</li>
      <li>/api/customer/:id — get customer info (e.g., SME000201)</li>
      <li>/api/recommend/:id — get customer recommendations</li>
      <li>POST /api/chat — AI assistant (send JSON: { "message": "your question", "customerId": "SME000201" })</li>
    </ul>
  `);
});

// ✅ Health check
app.get('/api/health', async (req, res) => {
  const ollamaStatus = await checkOllamaHealth();
  res.json({ 
    status: 'ok',
    ollama: ollamaStatus ? 'running' : 'not available',
    message: ollamaStatus ? 'Ollama AI service is ready' : 'Ollama not running - install from https://ollama.com'
  });
});

// ✅ Customer lookup
app.get('/api/customer/:id', async (req, res) => {
  const id = (req.params.id || '').toUpperCase();
  const cust = await getCustomerById(id);
  if (!cust) return res.status(404).json({ error: 'Customer not found' });
  const tickets = await getTicketsForCustomer(id);
  res.json({ customer: cust, tickets });
});

// ✅ Chat endpoint
app.post('/api/chat', async (req, res) => {
  const { message, customerId } = req.body || {};
  
  console.log('[server] 📨 Chat request received:', { message, customerId });
  
  try {
    // Step 1: Check FAQ database
    const faqHits = await searchFaqs(message || '');
    if (faqHits && faqHits.length) {
      console.log('[server] ✅ FAQ match found');
      return res.json({ source: 'faq', answer: faqHits[0] });
    }

    // Step 2: Check customer database if ID provided
    if (customerId) {
      const cust = await getCustomerById(customerId.toUpperCase());
      if (cust) {
        console.log('[server] ✅ Customer data found');
        return res.json({ source: 'crm', answer: cust });
      }
    }

    // Step 3: Use Ollama AI for intelligent response
    console.log('[server] 🤖 Using Ollama AI for response...');
    const reply = await ollamaChat(message || '', customerId);
    
    if (reply) {
      console.log('[server] ✅ Ollama response generated');
      return res.json({ source: 'llm', answer: reply });
    }

    // Step 4: Fallback if Ollama is not available
    console.log('[server] ⚠️  Ollama not available, using fallback');
    
    // Detect language for fallback message
    const isArabic = /[\u0600-\u06FF]/.test(message || '');
    const fallbackMessage = isArabic 
      ? "عذراً، خدمة الذكاء الاصطناعي غير متاحة حالياً. يرجى التواصل مع فريق الدعم أو إعادة المحاولة لاحقاً. تأكد من تشغيل Ollama باستخدام الأمر: ollama serve"
      : "Sorry, the AI service is currently not available. Please contact our support team or try again later. Make sure Ollama is running with: ollama serve";
    
    return res.json({
      source: 'fallback',
      answer: fallbackMessage
    });
    
  } catch (err) {
    console.error('[server] ❌ Error in chat endpoint:', err);
    res.status(500).json({ error: 'server error', details: err.message });
  }
});

// ✅ Recommendation endpoint
app.get('/api/recommend/:id', async (req, res) => {
  const id = (req.params.id || '').toUpperCase();
  const recs = await recommendForCustomer(id);
  res.json({ recommendations: recs });
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`Backend running on port ${PORT}`));
