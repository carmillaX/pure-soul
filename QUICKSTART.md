# Quick Start Guide - Pure Soul App

## 🚀 Get Started in 5 Minutes

### Step 1: Navigate to Project
```bash
cd "c:\Users\jojom\pure soul"
```

### Step 2: Install Dependencies
```bash
# Install all dependencies
npm install
```

### Step 3: Configure Environment
```bash
# Copy example env file
cd backend
copy .env.example .env
```

Edit `backend\.env`:
```
PORT=5000
NODE_ENV=development
MONGODB_URI=mongodb://localhost:27017/pure-soul
JWT_SECRET=your_super_secret_jwt_key_here_change_in_production
OPENAI_API_KEY=sk-your-openai-key-here
```

### Step 4: Start MongoDB
If using local MongoDB:
```bash
mongod
```

If using MongoDB Atlas, just use your connection string in .env

### Step 5: Start the Application

**Open 2 terminals:**

**Terminal 1 - Backend:**
```bash
cd backend
npm run dev
```
✅ Backend running on http://localhost:5000

**Terminal 2 - Frontend:**
```bash
cd frontend
npm start
```
✅ Frontend running on http://localhost:3000

## 📝 Create Test Account

1. Go to http://localhost:3000
2. Click "Register"
3. Fill in:
   - Nickname: TestUser
   - Email: test@example.com
   - Password: Test123!
   - Age: 25
   - Gender: Male
   - Height: 170
   - Weight: 70

## 🎯 Test the Features

### 1. Record Symptoms (Heart ❤️)
- Select symptoms you want to test with
- Add severity, duration, triggers
- Click "Analyze Symptoms"

### 2. View Diagnosis (Doctor 👨‍⚕️)
- See AI analysis of your symptoms
- Review treatment recommendations
- Check medications and coping strategies

### 3. Chat with AI (Chat 💬)
- Send messages to AI doctor
- Get 24/7 support
- Ask about treatments and symptoms

### 4. Update Profile (Profile 👤)
- View and edit your information
- Update health metrics
- View symptom history

## 📂 Project Structure

```
pure soul/
├── frontend/
│   ├── public/
│   ├── src/
│   │   ├── pages/          # Login, Register, Home, Symptom, Diagnosis, Chat, Profile
│   │   ├── components/     # Reusable components
│   │   ├── styles/         # CSS for each page
│   │   ├── App.js         # Main app component
│   │   └── index.js       # Entry point
│   └── package.json
│
├── backend/
│   ├── routes/
│   │   ├── auth.js        # Authentication routes
│   │   ├── user.js        # User profile routes
│   │   ├── symptoms.js    # Symptom recording routes
│   │   ├── diagnosis.js   # Diagnosis routes
│   │   ├── treatment.js   # Treatment info routes
│   │   └── chat.js        # Chat routes
│   │
│   ├── models/
│   │   ├── User.js        # User schema
│   │   ├── Symptom.js     # Symptom schema
│   │   ├── Diagnosis.js   # Diagnosis schema
│   │   ├── Treatment.js   # Treatment schema
│   │   └── Chat.js        # Chat schema
│   │
│   ├── ai-module/
│   │   └── diagnosis-engine.js  # AI logic (ready for OpenAI integration)
│   │
│   ├── server.js          # Express server
│   ├── .env.example       # Environment variables template
│   └── package.json
│
├── README.md              # Project overview
├── SETUP.md              # Detailed setup instructions
└── package.json          # Root package.json
```

## 🎨 UI/UX Features

✅ **Calming Colors**
- Soft Sky Blue (#87CEEB)
- Soft Pink (#FFB6C1)
- Soft Purple (#DDA0DD)
- White backgrounds

✅ **Responsive Design**
- Mobile-friendly
- Works on tablets and desktops
- Touch-friendly buttons

✅ **Easy Navigation**
- Bottom navigation bar with 3 sections
- Heart icon for symptoms
- Doctor icon for AI diagnosis
- Profile icon for user settings

## 🔧 Development Tools

### Frontend Development
- React 18.2
- React Router for navigation
- CSS for styling
- Axios for API calls

### Backend Development
- Node.js with Express.js
- MongoDB with Mongoose
- JWT authentication
- OpenAI API ready

## 🐛 Common Issues & Solutions

| Issue | Solution |
|-------|----------|
| Port 3000 in use | Kill process: `netstat -ano \| findstr :3000` |
| Port 5000 in use | Change PORT in .env |
| MongoDB won't connect | Start mongod service or use MongoDB Atlas |
| CORS errors | Make sure backend is running |
| Module not found | Run `npm install` in the folder |

## 📚 Useful Commands

```bash
# Start backend in development mode with auto-reload
cd backend && npm run dev

# Start frontend
cd frontend && npm start

# Build frontend for production
cd frontend && npm run build

# Install specific package
npm install package-name

# View running processes
netstat -ano | findstr :3000
netstat -ano | findstr :5000
```

## 🎓 Next Steps to Enhance

1. **Add More Conditions**
   - Create seed data with more mental health conditions
   - Add comprehensive treatment information

2. **Integrate Real AI**
   - Sign up for OpenAI API
   - Add API key to .env
   - Uncomment API calls in `diagnosis-engine.js`

3. **Add User Features**
   - Progress tracking
   - History charts
   - Export reports

4. **Security**
   - Add rate limiting
   - Implement refresh tokens
   - Add encryption for sensitive data

5. **Deployment**
   - Deploy frontend to Vercel/Netlify
   - Deploy backend to Heroku/Railway/Render
   - Set up MongoDB Atlas for production

## 📞 Crisis Support

**Important**: Add these to the app UI:

🆘 **International Crisis Lines**
- Global: https://www.iasp.info/resources/Crisis_Centres/
- US: 988 Suicide & Crisis Lifeline
- Crisis Text Line: Text HOME to 741741

## ✨ Features to Implement Next

- [ ] Mood tracking with charts
- [ ] Appointment booking with real psychiatrists
- [ ] Medication reminders
- [ ] Support group connections
- [ ] Journal/diary feature
- [ ] Video consultation capability
- [ ] Integration with health apps
- [ ] Multilingual support
- [ ] Offline support
- [ ] Push notifications

---

**Happy coding! 🎉**

Need help? Check SETUP.md for detailed instructions.
