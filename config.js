// Environment Configuration Loader
// This file loads environment variables for Firebase configuration

(function() {
    // For production deployment, you can set these environment variables
    // in your hosting platform (Vercel, Netlify, etc.) or load from .env file
    
    // Development fallback values (replace with your actual Firebase config)
    const defaultConfig = {
        FIREBASE_API_KEY: "AIzaSyDA6duS8SJ5Wr26qNxzBoge01Leestj-9o",
        FIREBASE_AUTH_DOMAIN: "animal-planet-73497.firebaseapp.com",
        FIREBASE_DATABASE_URL: "https://animal-planet-73497-default-rtdb.firebaseio.com",
        FIREBASE_PROJECT_ID: "animal-planet-73497",
        FIREBASE_STORAGE_BUCKET: "animal-planet-73497.appspot.com",
        FIREBASE_MESSAGING_SENDER_ID: "15025745338",
        FIREBASE_APP_ID: "1:15025745338:web:f2d2e2644d822afea00183",
        FIREBASE_MEASUREMENT_ID: "G-KP9582LMC3"
    };

    // Set global variables (fallback for development)
    for (const [key, value] of Object.entries(defaultConfig)) {
        if (!window[key]) {
            window[key] = value;
        }
    }
})();