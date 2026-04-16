## Setup Instructions

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn
- MongoDB (local or cloud)

### Installation

#### 1. Install Root Dependencies
```bash
npm install
```

#### 2. Backend Setup
```bash
cd backend
npm install
cp .env.example .env
```

Edit `.env` file with your configuration:
- `MONGODB_URI`: Your MongoDB connection string
- `JWT_SECRET`: A secure secret key for JWT
- `OPENAI_API_KEY`: Your OpenAI API key (optional, for AI features)

#### 3. Frontend Setup
```bash
cd frontend
npm install
```

### Running the Application

#### Development Mode

**Terminal 1 - Start Backend:**
```bash
cd backend
npm run dev
```

**Terminal 2 - Start Frontend:**
```bash
cd frontend
npm start
```

The application will be available at `http://localhost:3000`

#### Production Mode

**Build Frontend:**
```bash
cd frontend
npm run build
```

**Start Backend:**
```bash
cd backend
npm start
```

### Features

#### 1. User Authentication
- Register with email, password, age, gender, height, weight
- Login with credentials
- JWT-based authentication

#### 2. Symptom Recording (❤️ Icon)
- Select from common mental health symptoms
- Specify severity, duration, and frequency
- Identify triggers
- Detailed description input

#### 3. AI Diagnosis (👨‍⚕️ Icon)
- AI-powered symptom analysis
- Condition identification
- Treatment recommendations
- Medication information
- Coping strategies and lifestyle changes
- Professional help recommendations

#### 4. Chat with AI Doctor (💬)
- 24/7 AI conversation
- Mental health support
- Treatment guidance
- Crisis resources

#### 5. User Profile (👤 Icon)
- View and edit personal information
- Track health metrics
- View symptom history
- Manage account settings

### Color Scheme
- **Soft Sky Blue**: #87CEEB
- **White**: #FFFFFF
- **Soft Pink**: #FFB6C1
- **Soft Purple**: #DDA0DD

### API Endpoints

#### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/verify` - Verify JWT token

#### User
- `GET /api/users/profile` - Get user profile
- `PUT /api/users/profile` - Update user profile
- `GET /api/users/symptoms-history` - Get symptoms history
- `GET /api/users/diagnosis-history` - Get diagnosis history

#### Symptoms
- `POST /api/symptoms/record` - Record symptoms
- `GET /api/symptoms` - Get all user symptoms
- `GET /api/symptoms/latest` - Get latest symptoms
- `GET /api/symptoms/:id` - Get symptom by ID

#### Diagnosis
- `POST /api/diagnosis/create` - Create diagnosis
- `GET /api/diagnosis` - Get all diagnoses
- `GET /api/diagnosis/latest` - Get latest diagnosis
- `GET /api/diagnosis/:id` - Get diagnosis by ID

#### Treatments
- `GET /api/treatments` - Get all treatments
- `GET /api/treatments/condition/:name` - Get treatment by condition
- `GET /api/treatments/category/:category` - Get treatments by category
- `GET /api/treatments/:id` - Get treatment by ID

#### Chat
- `GET /api/chat/session` - Get or create chat session
- `POST /api/chat/message` - Send message to AI
- `GET /api/chat/history/:chatId` - Get chat history
- `POST /api/chat/close/:chatId` - Close chat session

### Database Models

#### User
- nickname, email, password
- age, gender, height, weight
- symptoms (array of Symptom IDs)
- diagnosis (array of Diagnosis IDs)

#### Symptom
- userId, symptoms array
- severity, duration
- description, frequency
- impactOnDailyLife, triggers

#### Diagnosis
- userId, symptomId
- conditionName, description
- confidence level
- psychological & physical treatment
- medications, coping strategies
- lifestyle recommendations

#### Treatment
- conditionName, category
- description, symptoms
- psychological & physical treatment
- medications, coping strategies
- preventionTips, resources

#### Chat
- userId, diagnosisId
- messages (array with role and content)
- sessionStarted, lastMessage
- isActive status

### Important Notes

1. **Medical Disclaimer**: This app is for informational purposes only and should not replace professional medical advice.

2. **Crisis Support**: Include crisis hotline numbers prominently in the UI.

3. **Data Privacy**: All user data should be encrypted and comply with privacy regulations (GDPR, HIPAA where applicable).

4. **AI Integration**: 
   - Currently uses mock responses
   - To enable real AI, add OpenAI API key to .env
   - Uncomment API calls in `diagnosis-engine.js`

5. **MongoDB Connection**:
   - For local development: `mongodb://localhost:27017/pure-soul`
   - For cloud (MongoDB Atlas): Use connection string from your cluster

### Troubleshooting

**Port already in use:**
```bash
# Change port in backend server.js or use environment variable
PORT=5001 npm start
```

**CORS errors:**
- Make sure frontend URL is allowed in backend CORS settings
- Check that backend is running on port 5000

**Database connection issues:**
- Verify MongoDB is running
- Check connection string in .env
- Ensure network access is allowed (for MongoDB Atlas)

### Next Steps

1. Set up MongoDB database
2. Configure environment variables
3. Integrate OpenAI API for AI features
4. Add crisis hotline data
5. Implement real AI diagnosis engine
6. Add more mental health conditions to database
7. Implement advanced analytics and reporting
8. Add appointment booking with real psychiatrists
9. Implement notification system
10. Add multilingual support

### Support & Contact

For issues or feature requests, please reach out to the development team.

---
**Version**: 1.0.0
**Last Updated**: January 2026
