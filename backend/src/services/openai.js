// // backend/src/services/openai.js
// require('dotenv').config();
// const OpenAI = require('openai');

// const apiKey = process.env.OPENAI_API_KEY;
// if (!apiKey) {
//   console.log('[openai] OPENAI_API_KEY not set - LLM disabled');
// }

// const client = apiKey ? new OpenAI({ apiKey }) : null;

// async function openaiChat(message) {
//   if (!client || !message) return null;
//   try {
//     const resp = await client.chat.completions.create({
//       model: "gpt-4o-mini", // change if you need a different model you have access to
//       messages: [
//         { role: "system", content: "You are a helpful Ooredoo B2B support assistant." },
//         { role: "user", content: message }
//       ],
//       max_tokens: 300,
//       temperature: 0.2
//     });
//     return resp.choices?.[0]?.message?.content || null;
//   } catch (e) {
//     console.error('[openai] error', e);
//     return null;
//   }
// }

// module.exports = { openaiChat };


// backend/src/services/openai.js
// require('dotenv').config();
// const OpenAI = require('openai');

// const apiKey = process.env.OPENAI_API_KEY;

// // ✅ Debugging log to confirm .env is loading
// console.log('[openai] Loaded API key prefix:', apiKey ? apiKey.slice(0, 7) + '...' : '❌ Not found');

// if (!apiKey) {
//   console.log('[openai] OPENAI_API_KEY not set - LLM disabled');
// }

// const client = apiKey ? new OpenAI({ apiKey }) : null;

// async function openaiChat(message) {
//   if (!client || !message) return null;
//   try {
//     const resp = await client.chat.completions.create({
//       model: "gpt-4o-mini", // change if you need a different model you have access to
//       messages: [
//         { role: "system", content: "You are a helpful Ooredoo B2B support assistant." },
//         { role: "user", content: message }
//       ],
//       max_tokens: 300,
//       temperature: 0.2
//     });
//     return resp.choices?.[0]?.message?.content || null;
//   } catch (e) {
//     console.error('[openai] error', e);
//     return null;
//   }
// }

// module.exports = { openaiChat };



// backend/src/services/openai.js
require('dotenv').config();
const OpenAI = require('openai');

const apiKey = process.env.OPENAI_API_KEY;
if (!apiKey) {
  console.log('[openai] ❌ OPENAI_API_KEY not set - LLM disabled');
}

const client = apiKey ? new OpenAI({ apiKey }) : null;

async function openaiChat(message) {
  if (!client || !message) {
    console.log('[openai] ⚠️ No client or empty message');
    return null;
  }

  try {
    console.log('[openai] Sending message to API:', message);

    const resp = await client.chat.completions.create({
      model: "gpt-4o-mini", // or try "gpt-4-turbo" if error
      messages: [
        { role: "system", content: "You are a helpful Ooredoo B2B support assistant." },
        { role: "user", content: message }
      ],
      max_tokens: 300,
      temperature: 0.2
    });

    console.log('[openai] ✅ API response received:');
    console.log(resp);

    const reply = resp.choices?.[0]?.message?.content || null;
    console.log('[openai] ✅ Final reply:', reply);

    return reply;
  } catch (e) {
    console.error('[openai] ❌ Error from API:', e);
    return null;
  }
}

module.exports = { openaiChat };
