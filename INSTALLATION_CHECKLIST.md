# ✅ INSTALLATION CHECKLIST

Use this checklist to ensure everything is set up correctly.

---

## 📋 Pre-Installation (5 minutes)

- [ ] **Node.js is installed** (v18 or higher)
  ```powershell
  node --version
  ```
  Expected: `v18.x.x` or higher

- [ ] **npm is working**
  ```powershell
  npm --version
  ```
  Expected: `9.x.x` or higher

- [ ] **Backend dependencies installed**
  ```powershell
  cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
  npm install
  ```
  Expected: `added XXX packages` (including `ollama`)

- [ ] **Frontend dependencies installed**
  ```powershell
  cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\frontend
  npm install
  ```
  Expected: `added XXX packages`

---

## 🤖 Ollama Installation (5-10 minutes)

- [ ] **Download Ollama installer**
  ```powershell
  Start-Process "https://ollama.com/download/windows"
  ```
  Expected: Browser opens to download page

- [ ] **Run OllamaSetup.exe**
  - Download location: Usually `Downloads` folder
  - Action: Double-click and follow wizard
  - Expected: "Installation complete" message

- [ ] **Restart PowerShell**
  - Action: Close and reopen PowerShell
  - Why: PATH environment variable needs refresh

- [ ] **Verify Ollama is installed**
  ```powershell
  ollama --version
  ```
  Expected: `ollama version 0.x.x`

- [ ] **Check if Ollama is running**
  ```powershell
  ollama list
  ```
  Expected: List of models (might be empty initially)

---

## 📥 Model Download (5-15 minutes)

- [ ] **Pull Mistral model** (RECOMMENDED)
  ```powershell
  ollama pull mistral
  ```
  Expected output:
  ```
  pulling manifest
  pulling ... (several layers)
  verifying sha256
  success
  ```
  Time: 5-15 minutes (4.1 GB download)

- [ ] **Verify model is downloaded**
  ```powershell
  ollama list
  ```
  Expected: `mistral` appears in the list with size and date

- [ ] **Quick model test**
  ```powershell
  ollama run mistral "Hello, respond with one word"
  ```
  Expected: A one-word response from the AI

---

## 🧪 Backend Testing (2 minutes)

- [ ] **Test Ollama service**
  ```powershell
  cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
  node test_ollama.js
  ```
  Expected output:
  ```
  ✅ Ollama is running and ready!
  ✅ Language detection tests passed
  ✅ English query successful
  ✅ Arabic query successful
  🎉 ALL TESTS COMPLETED!
  ```

- [ ] **Check for errors**
  - If you see ❌ errors, read the error message
  - Common fixes:
    - "Ollama not running" → Run `ollama serve`
    - "Model not found" → Run `ollama pull mistral`

---

## 🚀 Application Startup (1 minute)

### Terminal 1 - Backend:

- [ ] **Start backend server**
  ```powershell
  cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend
  npm run dev
  ```
  
- [ ] **Verify backend started successfully**
  Expected output:
  ```
  [ollama] 🚀 Initializing Ollama service...
  [ollama] ✅ Ollama is running
  [ollama] 📋 Available models: mistral
  [ollama] ✅ Loaded Arabic CRM data (50 customer records)
  [ollama] ✅ Loaded English CRM data (50 customer records)
  [ollama] ✅ Ollama service initialized successfully
  [nodemon] starting `node src/server.js`
  Backend running on port 4000
  ```

- [ ] **Keep this terminal open** (backend must stay running)

### Terminal 2 - Frontend:

- [ ] **Start frontend**
  ```powershell
  cd C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\frontend
  npm run dev
  ```

- [ ] **Verify frontend started**
  Expected output:
  ```
  VITE v5.x.x  ready in xxx ms
  ➜  Local:   http://localhost:5173/
  ```

- [ ] **Keep this terminal open** (frontend must stay running)

---

## 🌐 Browser Testing (2 minutes)

- [ ] **Open application in browser**
  - URL: http://localhost:5173
  - Expected: Chat interface loads

- [ ] **Test health endpoint**
  - Open new tab: http://localhost:4000/api/health
  - Expected JSON:
    ```json
    {
      "status": "ok",
      "ollama": "running",
      "message": "Ollama AI service is ready"
    }
    ```

- [ ] **Test English query**
  - Type in chat: `What services does Ooredoo offer?`
  - Expected: English response about Ooredoo services
  - Response time: 1-3 seconds

- [ ] **Test Arabic query**
  - Type in chat: `ما هي خدمات أوريدو؟`
  - Expected: Arabic response about Ooredoo services
  - Response time: 1-3 seconds

- [ ] **Test customer lookup**
  - Type: `Show me customer SME000201`
  - Expected: Customer details displayed

- [ ] **Test language switching**
  - Type English query → Get English response
  - Type Arabic query → Get Arabic response
  - Expected: AI automatically switches languages

---

## 🎯 Final Verification

- [ ] **All tests passed** ✅
- [ ] **Backend running without errors** ✅
- [ ] **Frontend accessible** ✅
- [ ] **English queries work** ✅
- [ ] **Arabic queries work** ✅
- [ ] **Language detection works** ✅
- [ ] **Response times are good** (1-3 seconds) ✅

---

## 📊 Troubleshooting Checklist

If something doesn't work, check:

### Backend Issues:

- [ ] **Ollama is running**
  ```powershell
  ollama list
  ```
  If not: `ollama serve`

- [ ] **Mistral model exists**
  ```powershell
  ollama list
  ```
  Should see `mistral` in list

- [ ] **Port 4000 is free**
  ```powershell
  netstat -ano | findstr :4000
  ```
  If occupied, change PORT in `.env`

- [ ] **CRM data files exist**
  - Check: `backend/data/arabic_crm.sql`
  - Check: `backend/data/english_crm.sql`

### Frontend Issues:

- [ ] **Port 5173 is free**
  ```powershell
  netstat -ano | findstr :5173
  ```

- [ ] **Backend is running first**
  - Backend must start before frontend

### Ollama Issues:

- [ ] **Ollama is in PATH**
  ```powershell
  ollama --version
  ```
  If not: Restart PowerShell or computer

- [ ] **Enough disk space**
  - Mistral needs: ~4.5 GB free space
  - Check: `Get-PSDrive C`

- [ ] **Internet connection**
  - Needed only for model download
  - After download, works offline

### Response Issues:

- [ ] **Slow responses (>5 seconds)**
  - Try smaller model: `ollama pull llama3.2`
  - Update `.env`: `OLLAMA_MODEL=llama3.2`

- [ ] **Arabic shows as boxes**
  - Install Arabic fonts on Windows
  - Settings → Fonts → Arabic Typesetting

- [ ] **Empty responses**
  - Check backend logs for errors
  - Restart Ollama: `ollama serve`

---

## 🎉 Success Criteria

Your installation is complete when:

✅ **All checkboxes above are marked**  
✅ **Backend shows Ollama initialized**  
✅ **Frontend is accessible**  
✅ **Both languages work correctly**  
✅ **No error messages in terminals**  

---

## 📞 Need Help?

1. **Read documentation:**
   - `QUICKSTART.md` - Quick setup guide
   - `OLLAMA_SETUP.md` - Detailed docs
   - `IMPLEMENTATION_SUMMARY.md` - Technical details

2. **Run diagnostics:**
   ```powershell
   node backend/test_ollama.js
   ```

3. **Check logs:**
   - Backend terminal: Look for `[ollama]` messages
   - Frontend terminal: Look for build errors

4. **Common commands:**
   ```powershell
   # Restart Ollama
   ollama serve
   
   # List models
   ollama list
   
   # Test model
   ollama run mistral "test"
   
   # Check health
   curl http://localhost:4000/api/health
   ```

---

## 🚀 Next Steps After Installation

Once everything works:

1. **Experiment with queries:**
   - Try different Arabic questions
   - Try different English questions
   - Test customer ID lookups

2. **Optimize if needed:**
   - Switch to faster model if responses are slow
   - Adjust temperature in `ollama.js` for creativity
   - Modify system prompts for your use case

3. **Customize:**
   - Add more CRM context
   - Extend FAQ database
   - Customize UI in frontend

4. **Deploy (optional):**
   - Consider deployment to production server
   - Set up reverse proxy (nginx)
   - Configure SSL certificates

---

## 📝 Notes

- **First query is slower** - Ollama loads model into memory (~5-10 seconds)
- **Subsequent queries are fast** - Model stays in memory (1-3 seconds)
- **Ollama auto-starts** - After first run, starts automatically on boot
- **No internet needed** - Works completely offline after setup

---

**Print this checklist and mark items as you go! 🎯**

**Estimated Total Time: 15-20 minutes**
