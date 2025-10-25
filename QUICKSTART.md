# 🚀 QUICK START GUIDE - Ollama Setup for Ooredoo AI Assistant

Follow these steps carefully to set up your AI assistant in **under 10 minutes**.

---

## ✅ Step 1: Install Ollama (2 minutes)

### Windows Installation:

1. **Download Ollama:**
   - Open PowerShell and run:
     ```powershell
     Start-Process "https://ollama.com/download/windows"
     ```
   - OR visit manually: https://ollama.com/download/windows

2. **Run the installer:**
   - Double-click `OllamaSetup.exe`
   - Follow the installation wizard (click Next → Install)
   - Wait for installation to complete (~30 seconds)

3. **Verify installation:**
   - **IMPORTANT:** Close and reopen PowerShell
   - Run:
     ```powershell
     ollama --version
     ```
   - You should see: `ollama version 0.x.x` (or similar)

✅ **Checkpoint:** If you see the version number, Ollama is installed!

---

## ✅ Step 2: Download AI Model (5-10 minutes)

1. **Pull Mistral model** (recommended for Arabic + English):
   ```powershell
   ollama pull mistral
   ```

2. **Wait for download:**
   - Size: ~4.1 GB
   - Time: 5-15 minutes (depending on internet speed)
   - You'll see progress: `pulling manifest`, `downloading...`, `verifying sha256`

3. **Verify download:**
   ```powershell
   ollama list
   ```
   - You should see `mistral` in the list

✅ **Checkpoint:** Model downloaded successfully!

---

## ✅ Step 3: Install Node.js Dependencies (30 seconds)

```powershell
cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
npm install
```

✅ **Checkpoint:** Dependencies installed (you should see `ollama` package listed)

---

## ✅ Step 4: Test Ollama Service (1 minute)

### Quick Test:
```powershell
cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
node test_ollama.js
```

**Expected output:**
```
🧪 OLLAMA SERVICE TEST SCRIPT
============================================================
📋 Test 1: Health Check
------------------------------------------------------------
✅ Ollama is running and ready!

📋 Test 2: Language Detection
------------------------------------------------------------
✅ "Hello, how are you?" → en (expected: en)
✅ "مرحباً، كيف حالك؟" → ar (expected: ar)
...
```

If you see errors:
- **"Ollama is not running"** → Run: `ollama serve` in a separate terminal
- **"Model 'mistral' not found"** → Run: `ollama pull mistral`

---

## ✅ Step 5: Start the Application (30 seconds)

### Terminal 1 - Backend:
```powershell
cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
npm run dev
```

**Expected output:**
```
[ollama] 🚀 Initializing Ollama service...
[ollama] ✅ Ollama is running
[ollama] 📋 Available models: mistral
[ollama] ✅ Loaded Arabic CRM data (50 customer records)
[ollama] ✅ Loaded English CRM data (50 customer records)
[ollama] ✅ Ollama service initialized successfully
Backend running on port 4000
```

### Terminal 2 - Frontend:
```powershell
cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\frontend
npm run dev
```

**Expected output:**
```
VITE v5.x.x  ready in xxx ms
➜  Local:   http://localhost:5173/
```

---

## ✅ Step 6: Test in Browser (1 minute)

1. **Open browser:** http://localhost:5173

2. **Test English query:**
   ```
   What services does Ooredoo offer for B2B customers?
   ```
   - Should respond in English with Ooredoo services

3. **Test Arabic query:**
   ```
   ما هي خدمات أوريدو للشركات الصغيرة والمتوسطة؟
   ```
   - Should respond in Arabic

4. **Test customer lookup:**
   ```
   Show me customer SME000201
   ```
   - Should show customer details

---

## 🎉 SUCCESS! You're Done!

Your Ooredoo AI Assistant is now running with:
- ✅ **$0 API costs** (no OpenAI needed)
- ✅ **Full Arabic support**
- ✅ **Full English support**
- ✅ **Automatic language detection**
- ✅ **CRM data integration**

---

## 📊 Quick Reference

### Useful Commands:

```powershell
# Check Ollama status
ollama list

# Test a quick query
ollama run mistral "Hello"

# Start Ollama service manually (if needed)
ollama serve

# Check backend health
curl http://localhost:4000/api/health

# Test backend chat
curl -X POST http://localhost:4000/api/chat -H "Content-Type: application/json" -d "{\"message\":\"test\"}"
```

### Model Options:

| Model | Size | Speed | Arabic Quality | Command |
|-------|------|-------|----------------|---------|
| **Mistral** ⭐ | 4.1GB | Fast | Excellent | `ollama pull mistral` |
| Llama 3.2 | 2GB | Very Fast | Good | `ollama pull llama3.2` |
| Qwen 2.5 | 4.7GB | Medium | Excellent | `ollama pull qwen2.5:7b` |

---

## 🐛 Common Issues & Solutions

### Issue 1: "Ollama command not found"
**Solution:**
- Close and reopen PowerShell (PATH needs to refresh)
- If still not working, restart your computer

### Issue 2: "Connection refused" or "Ollama not running"
**Solution:**
```powershell
# Start Ollama service
ollama serve
```
- Keep this terminal open while using the app

### Issue 3: Slow responses (>10 seconds)
**Solution:**
- Use a smaller/faster model:
  ```powershell
  ollama pull llama3.2
  ```
- Update `backend/.env`:
  ```
  OLLAMA_MODEL=llama3.2
  ```

### Issue 4: Arabic shows as boxes ■■■
**Solution:**
- Install Arabic fonts: Settings → Fonts → Download Arabic Typesetting
- Ensure browser encoding is UTF-8

### Issue 5: Model download stuck or failed
**Solution:**
```powershell
# Cancel with Ctrl+C, then try again
ollama pull mistral

# Or try a different model
ollama pull llama3.2
```

---

## 💡 Pro Tips

1. **Keep Ollama running:** 
   - Run `ollama serve` in a dedicated terminal
   - Ollama will auto-start on Windows boot after first run

2. **Switch models easily:**
   - Edit `backend/.env`
   - Set `OLLAMA_MODEL=your_model_name`
   - Restart backend with `npm run dev`

3. **Monitor performance:**
   - Watch backend logs for response times
   - Check `[ollama]` log messages for debugging

4. **Test queries:**
   - Use `test_ollama.js` before testing in browser
   - Helps identify issues quickly

---

## 📞 Need Help?

1. **Read detailed docs:** `OLLAMA_SETUP.md`
2. **Run diagnostics:** `node backend/test_ollama.js`
3. **Check Ollama logs:** Look for `[ollama]` messages in backend terminal
4. **Verify model:** `ollama list` should show `mistral`

---

## ⏱️ Total Setup Time

- Ollama download + install: **2 minutes**
- Model download (Mistral): **5-10 minutes**
- npm install: **30 seconds**
- Testing: **2 minutes**
- **TOTAL: ~10-15 minutes**

---

**🎯 Next Actions:**

1. ✅ Install Ollama → `Start-Process "https://ollama.com/download/windows"`
2. ✅ Pull model → `ollama pull mistral`
3. ✅ Test → `node backend/test_ollama.js`
4. ✅ Run backend → `npm run dev`
5. ✅ Run frontend → `cd ../frontend && npm run dev`
6. ✅ Test in browser → http://localhost:5173

**Let's get started! 🚀**
