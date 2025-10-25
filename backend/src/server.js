// backend/src/server.js
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { initDb, getCustomerById, getTicketsForCustomer, searchFaqs, recommendForCustomer } = require('./services/data');
// const { initDb } = require('./services/initDb');
const { openaiChat } = require('./services/openai');

const app = express();
app.use(cors());
app.use(express.json());

initDb();

// health
app.get('/api/health', (req, res) => res.json({ status: 'ok' }));

// customer lookup
app.get('/api/customer/:id', async (req, res) => {
  const id = (req.params.id || '').toUpperCase();
  const cust = await getCustomerById(id);
  if (!cust) return res.status(404).json({ error: 'Customer not found' });
  const tickets = await getTicketsForCustomer(id);
  res.json({ customer: cust, tickets });
});

// chat endpoint
app.post('/api/chat', async (req, res) => {
  const { message, customerId } = req.body || {};
  try {
    // FAQ search first
    const faqHits = await searchFaqs(message || '');
    if (faqHits && faqHits.length) return res.json({ source: 'faq', answer: faqHits[0] });

    // customer quick lookup
    if (customerId) {
      const cust = await getCustomerById(customerId.toUpperCase());
      if (cust) return res.json({ source: 'crm', answer: cust });
    }

    // fallback to OpenAI if key present
    const reply = await openaiChat(message || '');
    if (reply) return res.json({ source: 'llm', answer: reply });

    return res.json({ source: 'fallback', answer: "I couldn't find a direct answer. Try asking about maintenance, provide your customer ID (SME...), or rephrase." });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'server error' });
  }
});

// recommender endpoint
app.get('/api/recommend/:id', async (req, res) => {
  const id = (req.params.id || '').toUpperCase();
  const recs = await recommendForCustomer(id);
  res.json({ recommendations: recs });
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`Backend running on port ${PORT}`));
