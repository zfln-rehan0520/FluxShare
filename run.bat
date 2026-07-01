@echo off
echo ===================================================
echo           Starting Fluxshare Secure Vault
echo ===================================================

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not added to Environment PATH.
    echo Please install Python 3.10+ from python.org before running.
    pause
    exit /b
)

:: Navigate to the backend directory
cd backend

:: Create a local virtual environment if it doesn't exist
if not exist .venv (
    echo [INFO] Creating isolated Python environment .venv ...
    python -m venv .venv
)

:: Activate the virtual environment and install packages
echo [INFO] Activating environment and updating dependencies...
call .venv\Scripts\activate
pip install --upgrade pip
pip install -r requirements.txt

echo [SUCCESS] Dependencies verified.
echo [INFO] Starting the backend server on http://127.0.0.1:8000
echo You can now open frontend/index.html in your web browser.
echo Press Ctrl+C in this terminal to stop the server.
echo ===================================================

:: Launch the server
uvicorn app.main:app --reload --port 8000

pause
