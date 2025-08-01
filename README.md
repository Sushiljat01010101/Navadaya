# Girls Hostel Management System

A comprehensive web-based management system for girls' hostels built with Flask, Firebase, and modern web technologies.

## 🌟 Features

### Core Management
- **Student Management**: Registration, profiles, room assignments
- **Room Management**: Room inventory, capacity tracking, availability
- **Fee Management**: Payment tracking, dues reports, financial records
- **Report Generation**: Comprehensive PDF reports with advanced filtering
- **Notice Management**: Announcements and notifications
- **Complaint Management**: Student complaints and resolution tracking

### Security & Authentication
- Firebase Authentication with Google Sign-in
- Role-based access control
- QR code security system for receipt verification
- Secure session management

### Additional Features
- **Leave Management**: Leave applications and approval system
- **Room Change Management**: Room transfer requests
- **Maintenance Requests**: Room maintenance tracking
- **Receipt Verification**: Digital receipt authentication with QR codes
- **Student Portal**: Dedicated interface for students

## 🛠️ Technology Stack

- **Backend**: Flask (Python)
- **Database**: Firebase Firestore
- **Authentication**: Firebase Auth
- **Frontend**: Vanilla HTML/CSS/JavaScript
- **PDF Generation**: ReportLab
- **QR Codes**: qrcode library
- **Styling**: Custom CSS with Font Awesome icons

## 📋 Prerequisites

- Python 3.11+
- Firebase project with Firestore enabled
- Modern web browser

## 🚀 Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd girls-hostel-management
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Configure Firebase:
   - Copy `.env.example` to `.env` and fill in your Firebase configuration
   - Or update values in `config.js` with your Firebase project details
   - Set up Firebase security rules using `firebase-security-rules.txt`

4. Run the application:
```bash
python main.py
```

5. Access the application at `http://localhost:5000`

## 🔧 Configuration

### Firebase Setup
1. Create a Firebase project
2. Enable Firestore database
3. Enable Authentication with Email/Password and Google providers
4. Update the Firebase configuration in `js/firebase-config.js`

### Default Admin Account
- Email: admin@hostel.com
- Password: admin123

## 📁 Project Structure

```
├── main.py                     # Flask application
├── server.py                   # Development server
├── css/
│   └── styles.css             # Application styles
├── js/
│   ├── auth.js                # Authentication management
│   ├── firebase-config.js     # Firebase configuration
│   ├── dashboard.js           # Dashboard functionality
│   ├── students.js            # Student management
│   ├── rooms.js               # Room management
│   ├── fees.js                # Fee management
│   ├── reports.js             # Report generation
│   ├── notices.js             # Notice management
│   ├── complaints.js          # Complaint management
│   └── utils.js               # Utility functions
├── *.html                     # Application pages
├── firebase-security-rules.txt # Firestore security rules
└── README.md                  # This file
```

## 🎯 Key Features

### Dashboard
- Real-time statistics and overview
- Quick access to all modules
- System health monitoring

### Student Management
- Complete student profiles
- Room assignment tracking
- Course and year management
- Guardian information

### Financial Management
- Multiple fee types (rent, security, maintenance, electricity)
- Payment status tracking
- Overdue fee identification
- Comprehensive financial reports

### Security Features
- QR code receipt verification
- Digital receipt generation
- Secure hash verification
- Authentication-protected routes

## 🔒 Security

- All routes protected with Firebase Authentication
- Firestore security rules implemented
- QR code verification for receipts
- Secure session management
- Input validation and sanitization

## 📱 Responsive Design

The application is fully responsive and works seamlessly across:
- Desktop computers
- Tablets
- Mobile devices

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support and questions:
- Check the documentation
- Review Firebase console for database issues
- Ensure all dependencies are installed correctly

## 🔮 Future Enhancements

- Mobile app development
- Advanced analytics dashboard
- Automated notification system
- Integration with payment gateways
- Multi-language support
- Backup and restore functionality