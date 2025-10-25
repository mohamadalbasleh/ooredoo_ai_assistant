require('dotenv').config();
const axios = require('axios');
const { openaiChat } = require('./openai');
const { getCustomerById, getTicketsForCustomer, searchFaqs } = require('./data');

// Simple language detection: prefer Arabic if Arabic unicode range detected, otherwise English
function detectLanguage(text) {
  if (!text || typeof text !== 'string') return 'en';
  const arabicRegex = /[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF]/;
  return arabicRegex.test(text) ? 'ar' : 'en';
}

async function buildContext(message, customerId) {
  const lang = detectLanguage(message || '');
  let contextParts = [];

  // Add short system instruction in target language
  if (lang === 'ar') {
    contextParts.push('أنت مساعد دعم B2B لـ Ooredoo. أجب باللغة العربية باختصار وبدقة.');
  } else {
    contextParts.push('You are an Ooredoo B2B support assistant. Reply concisely and accurately.');
  }

  // If customerId provided, fetch customer and tickets and include as context
  if (customerId) {
    try {
      const cust = await getCustomerById(customerId.toUpperCase());
      if (cust) {
        contextParts.push(`Customer profile:\n${JSON.stringify(cust)}`);
        const tickets = await getTicketsForCustomer(customerId.toUpperCase());
        if (tickets && tickets.length) contextParts.push(`Recent tickets:\n${JSON.stringify(tickets.slice(0,5))}`);
      }
    } catch (e) {
      // continue without customer context
    }
  }

  // Include top FAQ hits (language-agnostic simple text match)
  try {
    const faqHits = await searchFaqs(message || '');
    if (faqHits && faqHits.length) contextParts.push('Related FAQ:\n' + faqHits.slice(0,3).join('\n---\n'));
  } catch (e) {}

  // The user's message last
  contextParts.push(`User: ${message}`);

  return { prompt: contextParts.join('\n\n'), lang };
}

async function callOlama(prompt, opts = {}) {
  const olamaUrl = process.env.OLAMA_URL; // e.g. http://127.0.0.1:11434
  const model = process.env.OLAMA_MODEL || 'ooba-mini';
  if (!olamaUrl) return null;

  try {
    // Best-effort generic HTTP call. Olama exposes different APIs depending on version.
    // We'll try a few common shapes and be tolerant of response variations.
    const body = {
      model,
      prompt,
      max_tokens: opts.max_tokens || 512,
      temperature: typeof opts.temperature === 'number' ? opts.temperature : 0.2
    };

    const resp = await axios.post(`${olamaUrl.replace(/\/$/, '')}/v1/generate`, body, { timeout: 60_000 });

    // Try multiple possible response shapes
    const data = resp.data || {};
    // common: { output: [{ content: [{ text: '...' }] }] }
    if (data.output && Array.isArray(data.output) && data.output[0]?.content && data.output[0].content[0]?.text) {
      return data.output[0].content[0].text;
    }
    // openai-like: { choices: [{ message: { content: '...' } }] }
    if (data.choices && data.choices[0]?.message?.content) {
      return data.choices[0].message.content;
    }
    // direct text
    if (typeof data === 'string') return data;
    if (data.text) return data.text;

    // fallback: stringify
    return JSON.stringify(data);
  } catch (e) {
    console.error('[llm] olama call error', e?.message || e);
    return null;
  }
}

async function generate({ message, customerId } = {}) {
  if (!message) return null;

  const { prompt, lang } = await buildContext(message, customerId);

  // Prefer olama provider if configured
  if ((process.env.LLM_PROVIDER || 'olama').toLowerCase() === 'olama') {
    const out = await callOlama(prompt, { max_tokens: 800, temperature: 0.1 });
    if (out) return out;
    // fallback to OpenAI if olama not reachable
  }

  // Fallback to OpenAI (if OPENAI_API_KEY set)
  try {
    const reply = await openaiChat(prompt);
    return reply;
  } catch (e) {
    console.error('[llm] fallback openai error', e);
    return null;
  }
}

module.exports = {
  detectLanguage,
  generate
};
