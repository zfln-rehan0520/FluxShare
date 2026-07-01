# Fluxshare - Zero-Knowledge Secure File Vault

Fluxshare is a minimalist, high-performance, browser-native file-sharing application built with a Zero-Knowledge architecture. It allows users to store files securely by encrypting them on-the-fly using hardware-accelerated **AES-256-GCM** before they ever write to the server's disk. User identities are heavily protected using the **Argon2id** password-hashing algorithm, preventing credential enumeration or brute-force tracking.

---

## Key Security Features

- **On-the-Fly AES-256-GCM Encryption:** Every single file payload uploaded is broken down, dynamically sealed with a secure 96-bit initialization vector (IV), and stored purely as untrackable ciphertext blocks.
- **Argon2id Authentication:** Industry-standard password hashing protecting user infrastructure against GPU-accelerated dictionary attacks.
- **Advanced Share Control Matrices:** Generate transient public download links with optional passcode walls, absolute hour-based expiration timers, or single-use "Burn-on-Read" conditions.
- **Zero Framework Bloat:** The frontend client is written entirely in native vanilla HTML5, CSS3, and JavaScript—completely removing third-party tracking scripts or package dependencies.

---

## System Requirements

To run this application locally, you only need to have **Python 3.10 or higher** installed on your machine. No complex server systems, heavy web frameworks, or container platforms are required.

---

## How to Run (One-Click Setup)

Running Fluxshare is designed to be completely seamless for any user.

### For Windows Users:
1. Double-click the **`run.bat`** file in the root directory.
2. A terminal window will open and automatically configure your isolated environment, update dependencies, and start your backend engine.
3. Open `frontend/index.html` directly in your favorite web browser (Chrome, Firefox, Brave, Edge).

### For Mac / Linux Users:
1. Open your system terminal, navigate to the `Fluxshare/` directory, and make the script executable:
   ```bash
   chmod +x run.sh
