# Ooredoo AI Assistant - Ollama Setup Guide

## ✅ COMPLETED: Ollama Integration

Your Ooredoo AI Assistant has been successfully configured to use **Ollama** instead of OpenAI. This eliminates API costs while providing excellent support for both Arabic and English.

---

## 📋 What Was Changed

### 1. **New Ollama Service** (`backend/src/services/ollama.js`)
   - ✅ Automatic language detection (Arabic/English)
   - ✅ CRM data integration from `arabic_crm.sql` and `english_crm.sql`
   - ✅ Bilingual system prompts
   - ✅ Customer context injection
   - ✅ Error handling and health checks

### 2. **Updated Server** (`backend/src/server.js`)
   - ✅ Replaced OpenAI with Ollama
   - ✅ Enhanced health endpoint with Ollama status
   - ✅ Improved chat endpoint with fallback handling
   - ✅ Bilingual error messages

### 3. **Dependencies**
   - ✅ Installed `ollama` npm package

---

## 🚀 Installation Steps

### Step 1: Install Ollama (Windows)

1. **Download Ollama for Windows:**
   ```powershell
   # Open browser and download from:
   Start-Process "https://ollama.com/download/windows"
   ```

2. **Install Ollama:**
   - Run the downloaded `OllamaSetup.exe`
   - Follow the installation wizard
   - Ollama will start automatically after installation

3. **Verify Installation:**
   ```powershell
   ollama --version
   ```

---

### Step 2: Download AI Model

We recommend **Mistral** for the best Arabic + English support:

```powershell
# Pull Mistral model (recommended - 4.1GB, excellent multilingual)
ollama pull mistral

# Alternative: Llama 3.2 (also good for Arabic/English)
# ollama pull llama3.2

# Alternative: Qwen2.5 (excellent Arabic support)
# ollama pull qwen2.5:7b
```

**Model Comparison:**
- **Mistral** (4.1GB): Best balance of speed, accuracy, and Arabic support ⭐ RECOMMENDED
- **Llama 3.2** (2GB): Faster but slightly less accurate with Arabic
- **Qwen 2.5** (4.7GB): Excellent Arabic but slower

---

### Step 3: Start Ollama Service

Ollama runs as a background service, but verify it's running:

```powershell
# Check if Ollama is running
ollama list

# If not running, start it manually
ollama serve
```

---

### Step 4: Test Your Setup

1. **Test Ollama directly:**
   ```powershell
   # English test
   ollama run mistral "What is Ooredoo?"

   # Arabic test
   ollama run mistral "ما هي أوريدو؟"
   ```

2. **Test the backend:**
   ```powershell
   cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
   node test_ollama.js
   ```

---

### Step 5: Start Your Application

```powershell
# Terminal 1: Start backend
cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
npm run dev

# Terminal 2: Start frontend
cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\frontend
npm run dev
```

---

## 🧪 Testing the Chatbot

### Test in Browser

1. Open your frontend (usually `http://localhost:5173`)

2. **Test English:**
   - Type: "What services does Ooredoo offer for businesses?"
   - Expected: English response using CRM data

3. **Test Arabic:**
   - Type: "ما هي خدمات أوريدو للشركات؟"
   - Expected: Arabic response using Arabic CRM data

4. **Test Customer Lookup:**
   - Type: "Show me information for customer SME000201"
   - Expected: Customer details from database

---

## 🔧 Configuration

### Environment Variables (Optional)

Create/update `.env` file in `backend/` folder:

```env
# Ollama Configuration
OLLAMA_HOST=http://127.0.0.1:11434
OLLAMA_MODEL=mistral

# Server Configuration
PORT=4000
```

---

## 🎯 Features

### ✅ Automatic Language Detection
- Detects Arabic if >30% of characters are Arabic (U+0600-U+06FF)
- Automatically responds in the same language as the user

### ✅ CRM Data Integration
- Loads 50 customer records from Arabic CRM database
- Loads 50 customer records from English CRM database
- Injects context into every AI response

### ✅ Bilingual Support
- System prompts in Arabic for Arabic queries
- System prompts in English for English queries
- Seamless language switching

### ✅ Cost Savings
- **$0** API costs (runs locally)
- No rate limits
- Complete data privacy

---

## 📊 Performance

| Model | Size | Speed | Arabic Quality | English Quality |
|-------|------|-------|----------------|-----------------|
| Mistral | 4.1GB | Fast | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Llama 3.2 | 2GB | Very Fast | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Qwen 2.5 | 4.7GB | Medium | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

---

## 🐛 Troubleshooting

### Issue: "Ollama is not running"

**Solution:**
```powershell
# Start Ollama service
ollama serve
```

### Issue: "Model 'mistral' not found"

**Solution:**
```powershell
# Pull the model
ollama pull mistral
```

### Issue: Slow responses

**Solutions:**
1. Use a smaller model: `ollama pull llama3.2`
2. Update `.env`: `OLLAMA_MODEL=llama3.2`
3. Close other applications to free up RAM

### Issue: Arabic text displays as boxes

**Solution:**
- Ensure your terminal/browser supports UTF-8
- Update Windows fonts (Settings → Fonts → Arabic Typesetting)

---

## 🔍 API Endpoints

### Health Check
```bash
GET http://localhost:4000/api/health
```

Response:
```json
{
  "status": "ok",
  "ollama": "running",
  "message": "Ollama AI service is ready"
}
```

### Chat
```bash
POST http://localhost:4000/api/chat
Content-Type: application/json

{
  "message": "What are Ooredoo's B2B services?",
  "customerId": "SME000201"
}
```

Response:
```json
{
  "source": "llm",
  "answer": "Ooredoo offers comprehensive B2B solutions including..."
}
```

---

## 🎓 Next Steps

1. ✅ Install Ollama
2. ✅ Pull Mistral model
3. ✅ Start backend: `npm run dev`
4. ✅ Test with Arabic and English queries
5. ✅ Enjoy cost-free AI assistance!

---

## 📞 Support

If you encounter issues:
1. Check Ollama logs: `ollama list`
2. Verify model is downloaded: `ollama list`
3. Check backend logs when starting: `npm run dev`
4. Test Ollama directly: `ollama run mistral "test"`

---

## 🌟 Benefits Summary

- ✅ **No API costs** - Runs locally
- ✅ **Full Arabic support** - Native language detection
- ✅ **Full English support** - Professional responses
- ✅ **CRM integration** - Context-aware answers
- ✅ **Fast responses** - Local processing
- ✅ **Privacy** - No data sent to external APIs
- ✅ **No rate limits** - Unlimited usage

---

**Created:** $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
**Status:** Ready for testing
**Ollama:** Required (install from https://ollama.com)
