# Pure Soul - Mental Health Diagnostic Application

## Overview
Pure Soul is a comprehensive mental health diagnostic application designed for youth, adolescents, and adults. The app provides symptom analysis, AI-powered diagnosis, and personalized treatment recommendations.

## Features
- **Symptom Recording**: Record and analyze symptoms
- **AI Diagnosis**: Advanced AI tool for mental health condition identification
- **Treatment Guidance**: Comprehensive treatment and medication information
- **User Profiles**: Manage personal health information
- **Chat with AI Doctor**: Real-time consultation with AI specialist
- **Calming UI**: Soft colors designed for user comfort

## Tech Stack
- **Frontend**: React, React Router, Tailwind CSS
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **AI**: OpenAI API / Custom AI Models
- **Authentication**: JWT

## Project Structure
```
pure soul/
├── frontend/          # React application
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   └── styles/
│   └── package.json
├── backend/          # Node.js/Express server
│   ├── routes/
│   ├── models/
│   ├── controllers/
│   ├── config/
│   ├── ai-module/
│   └── package.json
└── README.md
```

## Getting Started

### Prerequisites
- Node.js (v14 or higher)
- MongoDB
- npm or yarn

### Installation

1. **Backend Setup**
   ```bash
   cd backend
   npm install
   ```

2. **Frontend Setup**
   ```bash
   cd frontend
   npm install
   ```

### Running the Application

1. **Start Backend**
   ```bash
   cd backend
   npm start
   ```

2. **Start Frontend**
   ```bash
   cd frontend
   npm start
   ```

## Features in Detail

### 1. Symptom Recording (Heart Icon)
- Users can input their symptoms
- Symptoms are recorded in the database
- Historical tracking of symptoms

### 2. AI Doctor (Doctor Icon)
- AI-powered diagnosis
- Chat interface for consultation
- Treatment recommendations
- Medication information
- Coping strategies

### 3. User Profile (Profile Icon)
- Age, Gender, Height, Weight
- User nickname
- Medical history
- Treatment preferences

## Color Scheme
- Soft Sky Blue: #87CEEB
- White: #FFFFFF
- Soft Pink: #FFB6C1
- Soft Purple: #DDA0DD

## Security
- JWT-based authentication
- Password hashing
- Secure API endpoints
- HTTPS ready

## License
All rights reserved

## Support
For support, please contact the development team.
