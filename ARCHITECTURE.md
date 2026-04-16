# Pure Soul - Mental Health Diagnostic Application
## Complete Project Overview & Implementation Guide

---

## 📋 Table of Contents
1. [Project Overview](#project-overview)
2. [Architecture](#architecture)
3. [Technology Stack](#technology-stack)
4. [Features](#features)
5. [File Structure](#file-structure)
6. [Getting Started](#getting-started)
7. [API Documentation](#api-documentation)
8. [Database Schema](#database-schema)
9. [Customization Guide](#customization-guide)
10. [Deployment Guide](#deployment-guide)

---

## 🎯 Project Overview

**Pure Soul** is a comprehensive mental health diagnostic application designed for youth, adolescents, and adults. It provides:

- ✅ **Symptom Recording**: Users record their mental health symptoms
- ✅ **AI Diagnosis**: Advanced AI analyzes symptoms and provides diagnosis
- ✅ **Treatment Guidance**: Comprehensive treatment, medication, and coping strategies
- ✅ **24/7 AI Support**: Chat with AI doctor for mental health guidance
- ✅ **User Profiles**: Manage personal health information
- ✅ **Privacy-First**: User data is secure and private

### Target Users
- Youth (13-18 years)
- Adolescents (18-25 years)
- Adults seeking mental health support
- People uncomfortable with traditional psychiatric visits

### Core Value Proposition
Pure Soul provides **free, accessible mental health support** as an alternative to visiting psychiatric clinics, with focus on comfort and privacy.

---

## 🏗️ Architecture

### System Architecture
```
┌─────────────────────────────────────────────────────────┐
│                    Frontend (React)                      │
│  (Browser - http://localhost:3000)                       │
└─────────────────────┬───────────────────────────────────┘
                      │
                      │ HTTP/REST API
                      │
┌─────────────────────▼───────────────────────────────────┐
│              Backend (Node.js/Express)                   │
│  (Server - http://localhost:5000)                        │
│  ┌──────────────────────────────────────────────────┐   │
│  │ Routes                                            │   │
│  │ - Authentication (Login/Register)                 │   │
│  │ - User Profiles                                   │   │
│  │ - Symptom Recording                               │   │
│  │ - Diagnosis Generation                            │   │
│  │ - Treatment Information                           │   │
│  │ - Chat/AI Communication                           │   │
│  └──────────────────────────────────────────────────┘   │
│  ┌──────────────────────────────────────────────────┐   │
│  │ AI Module                                         │   │
│  │ - Diagnosis Engine                                │   │
│  │ - OpenAI Integration (ready)                      │   │
│  │ - Medical Knowledge Base                          │   │
│  └──────────────────────────────────────────────────┘   │
└─────────────────────┬───────────────────────────────────┘
                      │
                      │ Database Queries
                      │
┌─────────────────────▼───────────────────────────────────┐
│              MongoDB Database                            │
│  Collections:                                           │
│  - Users                                                │
│  - Symptoms                                             │
│  - Diagnoses                                            │
│  - Treatments                                           │
│  - Chat Messages                                        │
└─────────────────────────────────────────────────────────┘
```

### Data Flow
1. User opens app → Logs in/Registers
2. User records symptoms → Backend saves to database
3. AI analyzes symptoms → Returns diagnosis
4. User views diagnosis and treatments
5. User can chat with AI doctor
6. All data is stored securely

---

## 🛠️ Technology Stack

### Frontend
- **React 18.2.0** - UI library
- **React Router 6.8.0** - Client-side routing
- **Axios 1.4.0** - HTTP client
- **CSS3** - Styling (no frameworks, lightweight)
- **JavaScript ES6+** - Programming language

### Backend
- **Node.js** - Runtime environment
- **Express.js 4.18.2** - Web framework
- **MongoDB 7.0+** - NoSQL database
- **Mongoose 7.0.0** - MongoDB ODM
- **JWT (jsonwebtoken)** - Authentication
- **Bcryptjs** - Password hashing
- **Axios** - HTTP requests
- **OpenAI API** - AI integration (optional)

### DevOps & Tools
- **npm** - Package manager
- **MongoDB** - Local or MongoDB Atlas (cloud)
- **Git** - Version control
- **Postman** - API testing (recommended)

---

## ✨ Features

### 1. Authentication System
- User registration with validation
- Email and password login
- JWT token-based sessions
- Password hashing with bcryptjs
- Secure token verification

### 2. Symptom Recording (❤️ Section)
- Select from 12+ common mental health symptoms
- Specify severity (Mild, Moderate, Severe)
- Track symptom duration
- Frequency of symptoms (Always, Often, Sometimes, Rarely)
- Impact on daily life assessment
- Identify personal triggers
- Detailed symptom description
- Complete symptom history

### 3. AI Diagnosis (👨‍⚕️ Section)
- AI-powered symptom analysis
- Condition identification
- Confidence level rating
- Psychological treatment recommendations
- Physical treatment guidance
- Medication information with dosages
- Common side effects documentation
- Coping strategies (8+ per condition)
- Lifestyle changes and tips
- Professional help recommendations

### 4. AI Chat Doctor (💬)
- 24/7 AI mental health conversation
- Real-time messaging
- Session management
- Chat history tracking
- Crisis resource information
- Empathetic AI responses

### 5. User Profile Management (👤 Section)
- Personal information management
- Age, gender, height, weight tracking
- Nickname/display name
- Email management
- View symptom history
- View diagnosis history
- Account information

### 6. UI/UX Features
- Calming color palette (Sky Blue, Pink, Purple)
- Responsive mobile design
- Smooth animations
- Accessible layout
- Intuitive navigation
- Supportive messaging
- Progress tracking

---

## 📂 File Structure

```
pure soul/
├── frontend/
│   ├── public/
│   │   └── index.html              # Main HTML file
│   ├── src/
│   │   ├── pages/
│   │   │   ├── LoginPage.js        # Login/authentication page
│   │   │   ├── RegisterPage.js     # User registration
│   │   │   ├── HomePage.js         # Main dashboard
│   │   │   ├── SymptomPage.js      # Symptom recording
│   │   │   ├── DiagnosisPage.js    # Diagnosis display
│   │   │   ├── ChatPage.js         # AI chat interface
│   │   │   └── ProfilePage.js      # User profile management
│   │   ├── styles/
│   │   │   ├── auth.css            # Auth pages styles
│   │   │   ├── home.css            # Home page styles
│   │   │   ├── symptom.css         # Symptom page styles
│   │   │   ├── diagnosis.css       # Diagnosis page styles
│   │   │   ├── chat.css            # Chat page styles
│   │   │   └── profile.css         # Profile page styles
│   │   ├── App.js                  # Main app component
│   │   ├── App.css                 # Global styles
│   │   ├── index.js                # React entry point
│   │   └── index.css               # Global CSS
│   ├── package.json
│   └── .gitignore
│
├── backend/
│   ├── routes/
│   │   ├── auth.js                 # Auth endpoints (login/register)
│   │   ├── user.js                 # User profile endpoints
│   │   ├── symptoms.js             # Symptom recording endpoints
│   │   ├── diagnosis.js            # Diagnosis endpoints
│   │   ├── treatment.js            # Treatment information endpoints
│   │   └── chat.js                 # Chat/AI endpoints
│   ├── models/
│   │   ├── User.js                 # User schema
│   │   ├── Symptom.js              # Symptom schema
│   │   ├── Diagnosis.js            # Diagnosis schema
│   │   ├── Treatment.js            # Treatment schema
│   │   └── Chat.js                 # Chat schema
│   ├── ai-module/
│   │   └── diagnosis-engine.js     # AI diagnosis logic
│   ├── server.js                   # Express server entry
│   ├── seed-data.js                # Mental health conditions data
│   ├── package.json
│   ├── .env.example                # Environment variables template
│   └── .gitignore
│
├── README.md                       # Project overview
├── QUICKSTART.md                   # Quick start guide
├── SETUP.md                        # Detailed setup
├── ARCHITECTURE.md                 # This file
├── setup.bat                       # Windows setup script
├── setup.sh                        # Linux/Mac setup script
├── package.json                    # Root package.json
└── .gitignore
```

---

## 🚀 Getting Started

### Step 1: Prerequisites
```bash
# Check Node.js installation
node -v    # Should be v14 or higher
npm -v     # Should be v6 or higher
```

### Step 2: Clone/Extract Project
```bash
cd c:\Users\jojom\pure soul
```

### Step 3: Run Setup Script (Windows)
```bash
setup.bat
```
OR Manual Setup:
```bash
npm install
cd backend && npm install
cd ../frontend && npm install
```

### Step 4: Configure Environment
Edit `backend/.env`:
```env
PORT=5000
NODE_ENV=development
MONGODB_URI=mongodb://localhost:27017/pure-soul
JWT_SECRET=change_this_to_a_secure_key_in_production
OPENAI_API_KEY=your_openai_key_optional
```

### Step 5: Start MongoDB
```bash
mongod
```

### Step 6: Start Application

**Terminal 1 - Backend:**
```bash
cd backend
npm run dev
```
✅ Server running on http://localhost:5000

**Terminal 2 - Frontend:**
```bash
cd frontend
npm start
```
✅ App running on http://localhost:3000

### Step 7: Create Test Account
1. Click "Register"
2. Fill in details:
   - Nickname: TestUser
   - Email: test@example.com
   - Password: Test123!
   - Age: 25
   - Gender: Male

---

## 📡 API Documentation

### Base URL
`http://localhost:5000/api`

### Authentication Routes
```
POST /auth/register
POST /auth/login
GET /auth/verify
```

### User Routes
```
GET /users/profile
PUT /users/profile
GET /users/symptoms-history
GET /users/diagnosis-history
```

### Symptom Routes
```
POST /symptoms/record
GET /symptoms
GET /symptoms/latest
GET /symptoms/:id
```

### Diagnosis Routes
```
POST /diagnosis/create
GET /diagnosis
GET /diagnosis/latest
GET /diagnosis/:id
```

### Treatment Routes
```
GET /treatments
GET /treatments/condition/:name
GET /treatments/category/:category
GET /treatments/:id
```

### Chat Routes
```
GET /chat/session
POST /chat/message
GET /chat/history/:chatId
POST /chat/close/:chatId
```

---

## 💾 Database Schema

### User Collection
```javascript
{
  _id: ObjectId,
  nickname: String (unique),
  email: String (unique),
  password: String (hashed),
  age: Number,
  gender: String,
  height: Number,
  weight: Number,
  symptoms: [ObjectId],      // Ref: Symptom
  diagnosis: [ObjectId],     // Ref: Diagnosis
  createdAt: Date,
  updatedAt: Date
}
```

### Symptom Collection
```javascript
{
  _id: ObjectId,
  userId: ObjectId,          // Ref: User
  symptoms: [String],
  severity: String,          // Mild, Moderate, Severe
  duration: String,
  description: String,
  frequencyOfSymptoms: String,  // Always, Often, Sometimes, Rarely
  impactOnDailyLife: String,
  triggersIdentified: [String],
  createdAt: Date,
  analyzedAt: Date,
  aiAnalysis: ObjectId       // Ref: Diagnosis
}
```

### Diagnosis Collection
```javascript
{
  _id: ObjectId,
  userId: ObjectId,          // Ref: User
  symptomId: ObjectId,       // Ref: Symptom
  conditionName: String,
  description: String,
  confidence: Number,
  psychologicalTreatment: String,
  physicalTreatment: String,
  medications: [{
    name: String,
    dosage: String,
    frequency: String,
    duration: String,
    description: String,
    sideEffects: [String]
  }],
  copingStrategies: [String],
  lifestyle: [String],
  recommendations: [String],
  professionalHelp: String,
  createdAt: Date,
  updatedAt: Date
}
```

### Treatment Collection
```javascript
{
  _id: ObjectId,
  conditionName: String (unique),
  description: String,
  category: String,          // Anxiety, Depression, etc.
  symptoms: [String],
  psychologicalTreatment: String,
  physicalTreatment: String,
  commonMedications: [{
    name: String,
    dosage: String,
    frequency: String,
    description: String,
    sideEffects: [String]
  }],
  copingStrategies: [String],
  lifestyle: [String],
  preventionTips: [String],
  when_to_seek_help: String,
  resources: [String],
  createdAt: Date,
  updatedAt: Date
}
```

### Chat Collection
```javascript
{
  _id: ObjectId,
  userId: ObjectId,          // Ref: User
  diagnosisId: ObjectId,     // Ref: Diagnosis (optional)
  messages: [{
    role: String,            // 'user' or 'ai'
    content: String,
    timestamp: Date
  }],
  sessionStarted: Date,
  lastMessage: Date,
  isActive: Boolean,
}
```

---

## 🎨 Customization Guide

### Change Colors
Edit `frontend/src/App.css`:
```css
/* Change primary color */
--primary-blue: #87CEEB;      /* Soft Sky Blue */
--primary-pink: #FFB6C1;      /* Soft Pink */
--primary-purple: #DDA0DD;    /* Soft Purple */
```

### Add New Mental Health Conditions
1. Edit `backend/seed-data.js`
2. Add new condition object with:
   - conditionName
   - symptoms
   - psychologicalTreatment
   - medications
   - copingStrategies
   - lifestyle recommendations

### Customize Symptoms List
Edit `frontend/src/pages/SymptomPage.js`:
```javascript
const commonSymptoms = [
  'Your custom symptom',
  'Another symptom',
  // ...
];
```

### Add New Pages
1. Create file in `frontend/src/pages/`
2. Import in `frontend/src/App.js`
3. Add route in Router
4. Add navigation link

---

## 🌐 Deployment Guide

### Frontend Deployment (Vercel)
```bash
cd frontend
npm run build
# Deploy 'build' folder to Vercel
```

### Backend Deployment (Render.com)
1. Push code to GitHub
2. Connect GitHub to Render
3. Set environment variables
4. Deploy

### Database (MongoDB Atlas)
1. Create MongoDB Atlas cluster
2. Get connection string
3. Update `MONGODB_URI` in .env
4. Create database backups

---

## 🔒 Security Considerations

✅ **Implemented:**
- Password hashing (bcryptjs)
- JWT authentication
- Input validation
- Environment variables for secrets
- CORS protection
- Error handling

⚠️ **To Implement:**
- Rate limiting
- Refresh tokens
- HTTPS enforcement
- Data encryption at rest
- API key rotation
- Audit logging
- GDPR compliance
- HIPAA compliance (if needed)

---

## 📞 Support & Resources

### Crisis Hotlines (Important!)
- **US**: 988 Suicide & Crisis Lifeline
- **Crisis Text Line**: Text HOME to 741741
- **International**: https://www.iasp.info/resources/Crisis_Centres/

### Libraries Used
- React Documentation: https://react.dev
- Express.js: https://expressjs.com
- MongoDB: https://docs.mongodb.com
- Mongoose: https://mongoosejs.com
- JWT: https://jwt.io

### Mental Health Resources
- NAMI: https://www.nami.org
- ADAA: https://adaa.org
- NIMH: https://www.nimh.nih.gov
- SAMHSA: https://www.samhsa.gov

---

## 📈 Future Enhancements

- [ ] Video consultation with real psychiatrists
- [ ] Mood tracking with analytics
- [ ] Integration with wearable devices
- [ ] Appointment booking system
- [ ] Medication reminders
- [ ] Support group features
- [ ] Journal/diary with analysis
- [ ] Progress reports and insights
- [ ] Multilingual support (Arabic, Spanish, etc.)
- [ ] Offline support
- [ ] Mobile app (React Native)
- [ ] Integration with health apps

---

## ✅ Checklist for Production

- [ ] Change JWT_SECRET in .env
- [ ] Enable HTTPS
- [ ] Set up MongoDB backups
- [ ] Configure CORS for production
- [ ] Implement rate limiting
- [ ] Set up logging system
- [ ] Test all API endpoints
- [ ] Security audit
- [ ] Performance testing
- [ ] Load testing
- [ ] Backup recovery procedures
- [ ] Monitor system health
- [ ] Set up alerts

---

## 📝 License

This project is provided as-is for educational and mental health support purposes.

---

## 👥 Support Team

For questions, issues, or suggestions:
1. Check documentation (README.md, SETUP.md, QUICKSTART.md)
2. Review API documentation
3. Check sample data in seed-data.js
4. Contact development team

---

**Last Updated**: January 2026
**Version**: 1.0.0
**Status**: Ready for Development & Testing
