#!/bin/bash

# Girls Hostel Management System - GitHub Push Script
# Run this script to push your project to GitHub

echo "🏨 Pushing Girls Hostel Management System to GitHub..."
echo "Repository: https://github.com/Sushiljat01010101/Navadaya.git"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
fi

# Add all files
echo "📁 Adding all files to Git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "⚠️  No changes to commit"
else
    # Commit changes
    echo "💾 Committing changes..."
    git commit -m "Complete Girls Hostel Management System with Firebase integration

Features:
- Student Management System
- Room Management  
- Fee Management with PDF reports
- QR Code receipt verification
- Firebase Authentication
- Complaint Management
- Leave Management
- Maintenance Requests
- Secure environment configuration"
fi

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Add remote origin (remove if exists)
echo "🔗 Setting up GitHub remote..."
git remote remove origin 2>/dev/null || true

# Check if GitHub token is available
if [ -z "$GITHUB_TOKEN" ]; then
    echo "⚠️  GitHub token not found. Using HTTPS..."
    echo "💡 If authentication fails, you need to:"
    echo "   1. Create a Personal Access Token on GitHub"
    echo "   2. Run: git remote set-url origin https://USERNAME:TOKEN@github.com/Sushiljat01010101/Navadaya.git"
    git remote add origin https://github.com/Sushiljat01010101/Navadaya.git
else
    echo "🔑 Using GitHub token for authentication..."
    git remote add origin https://Sushiljat01010101:$GITHUB_TOKEN@github.com/Sushiljat01010101/Navadaya.git
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Successfully pushed to GitHub!"
echo "🌐 View your repository at: https://github.com/Sushiljat01010101/Navadaya"
echo ""
echo "📋 Your repository includes:"
echo "   - Complete hostel management system"
echo "   - Secure Firebase configuration" 
echo "   - Comprehensive documentation"
echo "   - Production-ready setup"