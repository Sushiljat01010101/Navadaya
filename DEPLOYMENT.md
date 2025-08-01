# Deployment Guide

## Security Configuration

### For Development
The application includes fallback Firebase configuration for development. However, for production deployment, you should:

### For Production Deployment

1. **Create your own Firebase project:**
   - Go to [Firebase Console](https://console.firebase.google.com)
   - Create a new project
   - Enable Firestore Database
   - Enable Authentication (Email/Password and Google)
   - Get your Firebase configuration

2. **Configure Environment Variables:**
   - Copy `.env.example` to `.env`
   - Fill in your actual Firebase configuration values
   - For hosting platforms (Vercel, Netlify, etc.), set these as environment variables

3. **Update Firebase Configuration:**
   - Replace values in `config.js` with your production values
   - Or better, remove default values and use only environment variables

### Environment Variables

```bash
FIREBASE_API_KEY=your_actual_api_key
FIREBASE_AUTH_DOMAIN=your_project.firebaseapp.com
FIREBASE_DATABASE_URL=https://your_project-default-rtdb.firebaseio.com
FIREBASE_PROJECT_ID=your_project_id
FIREBASE_STORAGE_BUCKET=your_project.appspot.com
FIREBASE_MESSAGING_SENDER_ID=your_sender_id
FIREBASE_APP_ID=your_app_id
FIREBASE_MEASUREMENT_ID=your_measurement_id
```

### Hosting Platforms

#### Vercel
1. Connect your GitHub repository
2. Add environment variables in Project Settings
3. Deploy

#### Netlify
1. Connect your GitHub repository
2. Add environment variables in Site Settings
3. Deploy

#### Firebase Hosting
1. Install Firebase CLI: `npm install -g firebase-tools`
2. Login: `firebase login`
3. Initialize: `firebase init hosting`
4. Deploy: `firebase deploy`

### Security Rules

Use the Firestore security rules from `firebase-security-rules.txt` in your Firebase console.

### Important Notes

- Never commit real API keys to GitHub
- Use environment variables for all sensitive data
- Test thoroughly before deployment
- Monitor Firebase usage and costs