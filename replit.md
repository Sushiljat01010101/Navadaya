# Navadaya Girls Hostel Management System

## Overview
The Navadaya Girls Hostel Management System is a static frontend application with Firebase backend integration, designed to streamline hostel administrative operations. It manages student records, room assignments, fee collection, notices, and complaints. The system aims to provide a comprehensive solution for efficient hostel management, enhancing operational effectiveness and communication.

## User Preferences
Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
The application uses a Static Multi-Page Application (MPA) built with HTML5, CSS3, and Vanilla JavaScript. It employs custom CSS with utility classes and a component-based styling approach, utilizing ES6 modules with a class-based architecture for client-side state management.

### Backend Architecture
Firebase serves as the Backend-as-a-Service (BaaS). Firestore is used as the NoSQL document database, Firebase Auth for authentication (email/password and Google OAuth), and Firebase Storage for file uploads. Firestore's real-time listeners enable live data synchronization.

### Authentication Strategy
Firebase Authentication manages user sessions and protects routes. It supports email/password and Google OAuth, with session management handling automatic redirects and auth state checking for protected page access.

### Key Components
Core management modules include:
- **StudentManager**: Handles student registration, profiles, and room assignments.
- **RoomManager**: Manages room inventory, capacity, and availability.
- **FeeManager**: Tracks payments, generates reports, and manages financial records.
- **ReportManager**: Generates comprehensive PDF reports for students and fees.
- **NoticeManager**: Manages announcements and notifications.
- **ComplaintManager**: Handles student complaints and resolution.
- **AuthManager**: Centralized authentication and session management.
- **Dashboard**: Provides overview statistics.
- **Utility Systems**: Common helper functions and Firebase initialization.

### System Design Choices
- **Comprehensive Receipt Security**: Tamper-proof receipt system with multi-parameter verification codes, cryptographic hashing, and a dedicated admin verification portal.
- **Branding Consistency**: System-wide branding update to "Navadaya Girls Hostel" across all pages, receipts, and documentation.
- **Room Change Management**: Admin interface for managing room change requests with real-time data, filtering, and one-click approve/reject functionality. Students can delete pending requests.
- **Leave Applications Management**: Admin interface for managing student leave applications with real-time data, filtering, and one-click approve/reject functionality.
- **Room Maintenance Requests Management**: Admin interface for managing maintenance requests with real-time data, multi-status workflow (Start Work → In Progress → Complete), and smart priority-based sorting.
- **Student Portal Session Management**: Persistent login sessions using localStorage with 24-hour validity, auto-login, and enhanced logout functionality.
- **Unified Receipt System**: Consistent HTML receipt generation across admin and student portals, ensuring professional, printable receipts.
- **Advanced Room & Leave Management**: Comprehensive room information (capacity, occupancy, roommates) and a full leave application system with multiple types, durations, and history tracking.
- **Student Portal UI/UX Overhaul**: Modern glassmorphism design with responsive layouts for all devices, enhanced complaint submission, advanced notice system, and integrated maintenance request system.
- **Core Functionality**: Fixed login error handling, admin account creation, automatic room status updates based on occupancy, document viewing, and a comprehensive fee system with multi-year generation, multiple fee types, and detailed reporting.
- **PDF Report Generation**: Advanced PDF report generation for individual students, all students, and comprehensive fees reports via Flask API endpoints using ReportLab.

## External Dependencies

### Core Libraries
- **Firebase SDK v10.7.1**: Provides authentication, Firestore, and Storage services.
- **Font Awesome 6.0.0**: Icon library for UI elements.
- **Google Fonts (Inter)**: Used for typography.
- **Chart.js**: Utilized for dashboard analytics and visualizations.

### Firebase Services Used
- **Authentication**: For user management and session handling.
- **Firestore**: The primary NoSQL database for all application data.
- **Storage**: For file and image storage, including student documents.
- **Project ID**: animal-planet-73497.