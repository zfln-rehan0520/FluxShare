#!/bin/bash

echo "==================================================="
echo "          Starting Fluxshare Secure Vault"
echo "==================================================="

# Check for Python
if ! command -v python3 &> /dev/null
then
    echo "[ERROR] Python3 could not be found. Please install Python."
    exit 1
fi

cd backend

# Create virtual environment if missing
if [ ! -d ".venv" ]; then
    echo "[INFO] Creating isolated Python environment (.venv)..."
    python3 -m venv .venv
fi

# Activate and install dependencies
echo "[INFO] Activating environment and updating dependencies..."
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "[SUCCESS] Dependencies verified."
echo "[INFO] Starting the backend server on http://127.0.0.1:8000"
echo "You can now open frontend/index.html in your web browser."
echo "Press Ctrl+C in this terminal to stop the server."
echo "==================================================="

uvicorn app.main:app --reload --port 8000
