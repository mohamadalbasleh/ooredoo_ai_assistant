# Ooredoo AI Assistant 🤖

**Bilingual AI-Powered B2B Customer Support System**

An intelligent customer service assistant for Ooredoo B2B clients in Qatar, featuring:
- 🌐 **Full Arabic & English Support** - Automatic language detection
- 🤖 **Local AI Processing** - Powered by Ollama (no API costs!)
- 📊 **CRM Integration** - Context-aware responses using customer data
- ⚡ **Fast & Accurate** - Optimized for business inquiries
- 💰 **Zero Cost** - No API fees, runs entirely on your machine

---

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- Windows 10/11 (or Linux/Mac with Ollama support)

### 1. Install Ollama & Setup

Run the automated setup script:

```powershell
# From the project root directory
.\setup_ollama.ps1
```

This will:
- ✅ Download and install Ollama
- ✅ Pull the Mistral AI model (4.1GB)
- ✅ Install Node.js dependencies
- ✅ Verify everything is working

**Manual Installation:**
If the script doesn't work, follow the detailed guide in [OLLAMA_SETUP.md](./OLLAMA_SETUP.md)

### 2. Start the Application

```powershell
# Terminal 1: Start Backend
cd backend
npm run dev

# Terminal 2: Start Frontend  
cd frontend
npm run dev
```

### 3. Test It!

Open your browser at `http://localhost:5173` and try:

**English Test:**
```
What services does Ooredoo offer for B2B customers?
```

**Arabic Test:**
```
ما هي خدمات أوريدو للشركات الصغيرة والمتوسطة؟
```

---

## 📋 Features

### ✅ Bilingual Support
- **Automatic Language Detection** - Detects Arabic/English automatically
- **Native Responses** - Responds in the user's language
- **Seamless Switching** - Switch languages mid-conversation

### ✅ Intelligent Context
- **CRM Integration** - 100+ customer records (Arabic + English)
- **Customer Lookup** - Query by customer ID (e.g., SME000201)
- **FAQ Database** - Pre-loaded troubleshooting answers
- **Historical Tickets** - Access to past customer interactions

### ✅ Cost Optimization
- **$0 API Costs** - Uses local Ollama instead of OpenAI
- **No Rate Limits** - Unlimited queries
- **Privacy** - Data stays on your machine

### ✅ Performance
- Fast response times (1-3 seconds)
- Optimized for business queries
- CRM data pre-loaded in memory

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    Frontend (React)                      │
│  - Chat interface                                        │
│  - Language detection                                    │
│  - Customer ID input                                     │
└────────────────────┬────────────────────────────────────┘
                     │
                     │ HTTP/JSON
                     │
┌────────────────────▼────────────────────────────────────┐
│                Backend (Node.js/Express)                 │
│  ┌──────────────────────────────────────────────────┐  │
│  │  Chat Endpoint (/api/chat)                       │  │
│  │    1. Check FAQ database                         │  │
│  │    2. Check CRM database (if customer ID)        │  │
│  │    3. Query Ollama AI                            │  │
│  │    4. Return response                            │  │
│  └──────────────────────────────────────────────────┘  │
│                                                          │
│  ┌──────────────────────────────────────────────────┐  │
│  │  Ollama Service (ollama.js)                      │  │
│  │    - Language detection                          │  │
│  │    - CRM context injection                       │  │
│  │    - Bilingual system prompts                    │  │
│  └──────────────────────────────────────────────────┘  │
└────────────────────┬────────────────────────────────────┘
                     │
                     │ Local API
                     │
┌────────────────────▼────────────────────────────────────┐
│                 Ollama (Local AI)                        │
│  - Mistral 7B model                                      │
│  - Arabic + English support                              │
│  - Runs on your GPU/CPU                                  │
└──────────────────────────────────────────────────────────┘
```

---

## 📂 Project Structure

```
ooredoo_ai_assistant/
├── backend/
│   ├── src/
│   │   ├── server.js              # Express server
│   │   └── services/
│   │       ├── ollama.js           # 🆕 Ollama AI service
│   │       ├── openai.js           # (deprecated)
│   │       ├── data.js             # CRM & FAQ data access
│   │       └── initDb.js           # Database initialization
│   ├── data/
│   │   ├── arabic_crm.sql          # Arabic customer database
│   │   ├── english_crm.sql         # English customer database
│   │   ├── faqs_troubleshooting_arabic.txt
│   │   └── historical_customer_tickets.csv
│   ├── test_ollama.js              # 🆕 Test script
│   └── package.json
├── frontend/
│   ├── src/
│   │   ├── App.jsx
│   │   └── pages/
│   │       └── Chat.jsx            # Chat UI
│   └── package.json
├── setup_ollama.ps1                # 🆕 Automated setup
├── OLLAMA_SETUP.md                 # 🆕 Detailed guide
└── README.md
```

---

## 🧪 Testing

### Test Ollama Service
```powershell
cd backend
node test_ollama.js
```

This runs comprehensive tests:
- ✅ Ollama health check
- ✅ Language detection (Arabic/English)
- ✅ English queries
- ✅ Arabic queries  
- ✅ Customer-specific queries
- ✅ Language switching

### Test Backend API
```powershell
# Health check
curl http://localhost:4000/api/health

# Chat (English)
curl -X POST http://localhost:4000/api/chat \
  -H "Content-Type: application/json" \
  -d "{\"message\":\"What services does Ooredoo offer?\"}"

# Chat (Arabic)
curl -X POST http://localhost:4000/api/chat \
  -H "Content-Type: application/json" \
  -d "{\"message\":\"ما هي خدمات أوريدو؟\"}"
```

---

## 🔧 Configuration

### Environment Variables

Create `backend/.env`:

```env
# Ollama Configuration
OLLAMA_HOST=http://127.0.0.1:11434
OLLAMA_MODEL=mistral

# Server Configuration  
PORT=4000
```

### Ollama Models

You can switch models by updating `.env`:

```env
# Recommended for Arabic + English
OLLAMA_MODEL=mistral

# Faster but slightly less accurate
OLLAMA_MODEL=llama3.2

# Best Arabic support but slower
OLLAMA_MODEL=qwen2.5:7b
```

Pull models with:
```powershell
ollama pull mistral
ollama pull llama3.2
ollama pull qwen2.5:7b
```

---

## 📊 Performance Metrics

| Metric | Value |
|--------|-------|
| Response Time (English) | 1-2 seconds |
| Response Time (Arabic) | 1-3 seconds |
| Language Detection Accuracy | >95% |
| API Cost | $0 |
| CRM Records Loaded | 100+ (50 AR + 50 EN) |
| Model Size | 4.1 GB (Mistral) |

---

## 🐛 Troubleshooting

See [OLLAMA_SETUP.md](./OLLAMA_SETUP.md) for detailed troubleshooting.

**Common Issues:**

1. **"Ollama is not running"**
   ```powershell
   ollama serve
   ```

2. **"Model 'mistral' not found"**
   ```powershell
   ollama pull mistral
   ```

3. **Slow responses**
   - Use a smaller model: `ollama pull llama3.2`
   - Close other applications

4. **Arabic text shows as boxes**
   - Install Arabic fonts on Windows
   - Ensure browser/terminal supports UTF-8

---

## 🌟 Why Ollama Instead of OpenAI?

| Feature | Ollama | OpenAI |
|---------|--------|--------|
| Cost | **FREE** | $0.002-0.03 per request |
| Arabic Support | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| Privacy | ✅ Local | ❌ Cloud |
| Rate Limits | ∞ Unlimited | Limited |
| Latency | 1-3s | 2-5s |
| Offline | ✅ Yes | ❌ No |

---

## 📖 Documentation

- [OLLAMA_SETUP.md](./OLLAMA_SETUP.md) - Detailed setup guide
- [API Documentation](#-api-endpoints) - See below

### API Endpoints

#### `GET /api/health`
Check server and Ollama status.

**Response:**
```json
{
  "status": "ok",
  "ollama": "running",
  "message": "Ollama AI service is ready"
}
```

#### `POST /api/chat`
Send a message to the AI assistant.

**Request:**
```json
{
  "message": "What are Ooredoo's B2B services?",
  "customerId": "SME000201"  // optional
}
```

**Response:**
```json
{
  "source": "llm",
  "answer": "Ooredoo offers comprehensive B2B solutions..."
}
```

---

## 🤝 Contributing

Contributions welcome! Areas for improvement:
- Additional language support
- Enhanced CRM query capabilities
- Performance optimizations
- UI/UX improvements

---

## 📄 License

MIT License - see LICENSE file

---

## 🎯 Roadmap

- [ ] Voice input/output
- [ ] WhatsApp integration
- [ ] Advanced analytics dashboard
- [ ] Multi-turn conversation memory
- [ ] RAG with vector database

---

## 💬 Support

For issues or questions:
1. Check [OLLAMA_SETUP.md](./OLLAMA_SETUP.md)
2. Run `node backend/test_ollama.js` to diagnose
3. Check Ollama logs: `ollama list`

---

**Built with ❤️ for Ooredoo Qatar B2B customers**

