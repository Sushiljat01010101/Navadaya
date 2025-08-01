# Fix GitHub Authentication Error

## The Problem
You're getting: "Invalid username or token. Password authentication is not supported"

## Solutions (Choose One)

### Method 1: Use Personal Access Token (Recommended)

1. **Create GitHub Personal Access Token:**
   - Go to GitHub.com → Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Click "Generate new token"
   - Name: "Replit Push Token"
   - Select scopes: `repo` (full control of private repositories)
   - Click "Generate token"
   - **COPY THE TOKEN** (you won't see it again)

2. **Use token instead of password:**
   ```bash
   git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/Sushiljat01010101/Navadaya.git
   git push -u origin main
   ```

### Method 2: Use SSH (Alternative)

1. **Generate SSH key:**
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   cat ~/.ssh/id_ed25519.pub
   ```

2. **Add SSH key to GitHub:**
   - Copy the SSH key output
   - GitHub → Settings → SSH and GPG keys → New SSH key
   - Paste the key

3. **Change remote to SSH:**
   ```bash
   git remote set-url origin git@github.com:Sushiljat01010101/Navadaya.git
   git push -u origin main
   ```

### Method 3: Manual Upload (Easiest)

Since authentication is complex, just use the manual method:

1. Download project as ZIP from Replit
2. Go to https://github.com/Sushiljat01010101/Navadaya
3. Click "uploading an existing file"
4. Drag all files and commit

## Quick Fix Command

Replace YOUR_TOKEN with your actual token:

```bash
git remote set-url origin https://Sushiljat01010101:YOUR_TOKEN@github.com/Sushiljat01010101/Navadaya.git
git push -u origin main
```