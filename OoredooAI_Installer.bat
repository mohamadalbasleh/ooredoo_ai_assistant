@echo off
:: Ooredoo AI Assistant Installer
:: Run this as Administrator

title Ooredoo AI Assistant Installer
color 0B

:: Change to the script's directory
cd /d "%~dp0"

echo =======================================
echo   Ooredoo AI Assistant Installer
echo =======================================
echo.

:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ERROR: This installer requires Administrator privileges!
    echo Please right-click and select "Run as Administrator"
    echo.
    pause
    exit /b 1
)

echo [1/8] Checking Node.js installation...
node --version >nul 2>&1
if %errorLevel% neq 0 (
    echo   X Node.js is not installed!
    echo   Please install Node.js from: https://nodejs.org/
    echo.
    pause
    exit /b 1
) else (
    node --version
    echo   √ Node.js detected
)
echo.

echo [2/8] Checking Ollama installation...
ollama --version >nul 2>&1
if %errorLevel% neq 0 (
    echo   ! Ollama not detected. Please install manually:
    echo   https://ollama.com/download
    echo.
    echo   Press any key to continue after installing Ollama...
    pause >nul
) else (
    echo   √ Ollama is installed
)
echo.

echo [3/8] Starting Ollama service...
tasklist /FI "IMAGENAME eq ollama.exe" 2>NUL | find /I /N "ollama.exe">NUL
if %errorLevel% neq 0 (
    start /B ollama serve
    timeout /t 3 /nobreak >nul
    echo   √ Ollama service started
) else (
    echo   √ Ollama service already running
)
echo.

echo [4/8] Downloading Llama 3.1 8B model (4.9GB)...
echo   This model provides superior Arabic dialect support
echo   Download may take 5-10 minutes depending on your connection...
ollama list | find "llama3.1:8b" >nul 2>&1
if %errorLevel% neq 0 (
    ollama pull llama3.1:8b
    echo   √ Llama 3.1 8B model downloaded successfully
) else (
    echo   √ Llama 3.1 8B model already downloaded
)
echo.

echo [5/8] Installing backend dependencies...
cd backend
if exist node_modules (
    echo   √ Backend dependencies already installed
) else (
    call npm install
    echo   √ Backend dependencies installed
)
cd ..
echo.

echo [6/8] Installing frontend dependencies...
cd frontend
if exist node_modules (
    echo   √ Frontend dependencies already installed
) else (
    call npm install
    echo   √ Frontend dependencies installed
)
cd ..
echo.

echo [7/8] Initializing database...
cd backend
if exist ooredoo_crm.db (
    echo   √ Database already exists
) else (
    node src/services/initDb.js
    echo   √ Database initialized
)
cd ..
echo.

echo [8/8] Starting servers...
echo   Starting backend server (port 4000)...
start "Ooredoo Backend" cmd /k "cd /d %cd%\backend && npm start"

timeout /t 3 /nobreak >nul

echo   Starting frontend server (port 5173)...
start "Ooredoo Frontend" cmd /k "cd /d %cd%\frontend && npm run dev"

echo.
echo =======================================
echo   √ Installation Complete!
echo =======================================
echo.
echo The application is starting...
echo.
echo Backend API: http://localhost:4000
echo Frontend UI: http://localhost:5173
echo.
echo Two terminal windows will open for the servers.
echo Do NOT close them while using the application!
echo.
echo Press any key to open the application in your browser...
pause >nul

:: Open browser
start http://localhost:5173

echo.
echo Enjoy using Ooredoo AI Assistant! 
echo.
pause
