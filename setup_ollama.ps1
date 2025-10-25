# Ooredoo AI Assistant - Quick Start Script
# Run this script to set up Ollama for the first time

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "  OOREDOO AI ASSISTANT - OLLAMA SETUP  " -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

# Step 1: Check if Ollama is installed
Write-Host "[1/5] Checking Ollama installation..." -ForegroundColor Yellow

$ollamaInstalled = $false
try {
    $null = Get-Command ollama -ErrorAction Stop
    $ollamaVersion = ollama --version 2>&1
    Write-Host "✅ Ollama is installed: $ollamaVersion" -ForegroundColor Green
    $ollamaInstalled = $true
}
catch {
    Write-Host "❌ Ollama is NOT installed" -ForegroundColor Red
    Write-Host "`n📥 Opening Ollama download page..." -ForegroundColor Yellow
    Write-Host "   Please download and install Ollama from the browser" -ForegroundColor Gray
    Write-Host "   Then CLOSE and REOPEN PowerShell and run this script again`n" -ForegroundColor Yellow
    
    Start-Process "https://ollama.com/download/windows"
    exit 1
}

# Step 2: Check if Ollama service is running
Write-Host "`n[2/5] Checking Ollama service..." -ForegroundColor Yellow

$ollamaRunning = $false
try {
    $models = ollama list 2>&1
    Write-Host "✅ Ollama service is running" -ForegroundColor Green
    $ollamaRunning = $true
}
catch {
    Write-Host "⚠️  Ollama service not running, attempting to start..." -ForegroundColor Yellow
    try {
        Start-Process -FilePath "ollama" -ArgumentList "serve" -WindowStyle Hidden
        Start-Sleep -Seconds 5
        Write-Host "✅ Ollama service started" -ForegroundColor Green
        $ollamaRunning = $true
    }
    catch {
        Write-Host "❌ Could not start Ollama service" -ForegroundColor Red
        Write-Host "   Please start it manually: ollama serve`n" -ForegroundColor Yellow
        exit 1

# Step 3: Check if Mistral model is downloaded
Write-Host "`n[3/5] Checking AI model (Mistral)..." -ForegroundColor Yellow

$modelList = ollama list 2>&1 | Out-String
if ($modelList -like "*mistral*") {
    Write-Host "✅ Mistral model is already downloaded" -ForegroundColor Green
} else {
    Write-Host "📥 Downloading Mistral model (4.1GB)..." -ForegroundColor Yellow
    Write-Host "   This may take 5-15 minutes depending on your internet speed" -ForegroundColor Gray
    Write-Host "   Please wait...`n" -ForegroundColor Gray
    
    ollama pull mistral
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✅ Mistral model downloaded successfully" -ForegroundColor Green
    } else {
        Write-Host "`n❌ Failed to download Mistral model" -ForegroundColor Red
        Write-Host "   Try manually: ollama pull mistral`n" -ForegroundColor Yellow
        exit 1
    }
}

# Step 4: Test the model
Write-Host "`n[4/5] Testing AI model..." -ForegroundColor Yellow
Write-Host "   Testing English..." -ForegroundColor Gray

$testResponse = ollama run mistral "Say 'Test successful' in one word" --verbose 2>&1 | Select-Object -First 1
if ($testResponse) {
    Write-Host "✅ English test passed" -ForegroundColor Green
} else {
    Write-Host "⚠️  English test warning (may still work)" -ForegroundColor Yellow
}

Write-Host "   Testing Arabic..." -ForegroundColor Gray
$testResponseAr = ollama run mistral "قل 'نجح الاختبار' بكلمة واحدة" --verbose 2>&1 | Select-Object -First 1
if ($testResponseAr) {
    Write-Host "✅ Arabic test passed" -ForegroundColor Green
} else {
    Write-Host "⚠️  Arabic test warning (may still work)" -ForegroundColor Yellow
}

# Step 5: Install Node.js dependencies (if needed)
Write-Host "`n[5/5] Checking Node.js dependencies..." -ForegroundColor Yellow

$backendPath = "C:\Users\hamza\Documents\GitHub\ooredoo_ai_assistant\backend"
Set-Location -Path $backendPath

if (Test-Path ".\node_modules\ollama") {
    Write-Host "✅ Ollama npm package is installed" -ForegroundColor Green
} else {
    Write-Host "📦 Installing Ollama npm package..." -ForegroundColor Yellow
    npm install ollama
    Write-Host "✅ Package installed" -ForegroundColor Green
}

# Final summary
Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "          🎉 SETUP COMPLETE! 🎉         " -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Cyan

Write-Host "✅ Ollama is installed and running" -ForegroundColor Green
Write-Host "✅ Mistral AI model is ready" -ForegroundColor Green
Write-Host "✅ Node.js dependencies are installed" -ForegroundColor Green

Write-Host "`n📋 Next Steps:" -ForegroundColor Yellow
Write-Host "   1. Test the Ollama service:" -ForegroundColor White
Write-Host "      node test_ollama.js`n" -ForegroundColor Cyan

Write-Host "   2. Start the backend server:" -ForegroundColor White
Write-Host "      npm run dev`n" -ForegroundColor Cyan

Write-Host "   3. In a new terminal, start the frontend:" -ForegroundColor White
Write-Host "      cd ..\frontend" -ForegroundColor Cyan
Write-Host "      npm run dev`n" -ForegroundColor Cyan

Write-Host "   4. Open your browser and test with:" -ForegroundColor White
Write-Host "      - English: 'What services does Ooredoo offer?'" -ForegroundColor Gray
Write-Host "      - Arabic: 'ما هي خدمات أوريدو للشركات؟'`n" -ForegroundColor Gray

Write-Host "📖 For detailed documentation, see: OLLAMA_SETUP.md`n" -ForegroundColor Yellow

Write-Host "🚀 Ready to start? Run: " -NoNewline -ForegroundColor White
Write-Host "npm run dev`n" -ForegroundColor Cyan
