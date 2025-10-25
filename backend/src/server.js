// backend/src/server.js
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { initDb, getCustomerById, getTicketsForCustomer, searchFaqs, recommendForCustomer } = require('./services/data');
const { openaiChat } = require('./services/openai');

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
app.get('/api/health', (req, res) => res.json({ status: 'ok' }));

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
  try {
    const faqHits = await searchFaqs(message || '');
    if (faqHits && faqHits.length) return res.json({ source: 'faq', answer: faqHits[0] });

    if (customerId) {
      const cust = await getCustomerById(customerId.toUpperCase());
      if (cust) return res.json({ source: 'crm', answer: cust });
    }

    const reply = await openaiChat(message || '');
    if (reply) return res.json({ source: 'llm', answer: reply });

    return res.json({
      source: 'fallback',
      answer: "I couldn't find a direct answer. Try asking about maintenance, provide your customer ID (SME...), or rephrase."
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'server error' });
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
