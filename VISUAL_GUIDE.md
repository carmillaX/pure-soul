# Pure Soul - Visual App Layout & User Flow

## 📱 App Interface Overview

```
┌─────────────────────────────────┐
│    PURE SOUL                    │
│   Mental Health Support         │
└─────────────────────────────────┘

╔═════════════════════════════════╗
║                                 ║
║      MAIN CONTENT AREA          ║
║                                 ║
║  (Page-specific content)        ║
║                                 ║
║                                 ║
╚═════════════════════════════════╝

┌─────────────────────────────────┐
│  ❤️   │  👨‍⚕️   │  👤          │
│Symp│ Diag │ Prof│
│toms│ nosis│ ile │
└─────────────────────────────────┘
← Bottom Navigation Bar (Fixed) →
```

---

## 🎨 Page Layouts

### 1. LOGIN PAGE
```
┌─────────────────────────────────┐
│  Pure Soul                      │
│  Mental Health Support          │
├─────────────────────────────────┤
│                                 │
│       LOGIN                     │
│                                 │
│  Email:     [_____________]    │
│  Password:  [_____________]    │
│                                 │
│        [  LOGIN  ]              │
│                                 │
│  Don't have account? Register   │
│                                 │
└─────────────────────────────────┘
```

### 2. HOME PAGE
```
┌─────────────────────────────────┐
│ Welcome to Pure Soul            │
│ Hello, [Username]! 👋          │
├─────────────────────────────────┤
│                                 │
│  This is your mental health     │
│  companion. Start your          │
│  journey to better health.      │
│                                 │
│  ┌────────┐ ┌────────┐         │
│  │  ❤️    │ │ 👨‍⚕️   │         │
│  │Record  │ │  AI    │         │
│  │Symptoms│ │ Doctor │         │
│  └────────┘ └────────┘         │
│                                 │
│  ┌────────┐                     │
│  │  👤    │                     │
│  │Profile │                     │
│  └────────┘                     │
│                                 │
│  ⚠️ Professional Help Note      │
│                                 │
│        [  LOGOUT  ]             │
│                                 │
└─────────────────────────────────┘
```

### 3. SYMPTOM PAGE (❤️)
```
┌─────────────────────────────────┐
│ Record Your Symptoms            │
│ Help us understand what you're  │
│ experiencing                    │
├─────────────────────────────────┤
│                                 │
│ Select Your Symptoms:           │
│ [Sadness] [Anxiety] [Sleep...]  │
│ [Fatigue] [Focus...] [Irritab...│
│                                 │
│ Selected Symptoms (3)           │
│ ✕ Anxiety  ✕ Sadness           │
│                                 │
│ Severity: [Moderate ▼]          │
│                                 │
│ How long: [2 weeks]             │
│                                 │
│ Frequency: [Sometimes ▼]        │
│                                 │
│ Impact: [Moderate ▼]            │
│                                 │
│ Describe more: [________]       │
│                                 │
│ Triggers: [stress] [Trigger +]  │
│                                 │
│  [  ANALYZE SYMPTOMS  ]         │
│                                 │
└─────────────────────────────────┘
```

### 4. DIAGNOSIS PAGE (👨‍⚕️)
```
┌─────────────────────────────────┐
│ Your Analysis                   │
│ Based on your symptoms          │
├─────────────────────────────────┤
│                                 │
│ ANXIETY DISORDER                │
│ Persistent anxiety affecting    │
│ daily life                      │
│                                 │
│ Confidence: ███████░░ 70%       │
│                                 │
│ 🧠 Psychological Treatment      │
│ Cognitive Behavioral Therapy,   │
│ mindfulness meditation...       │
│                                 │
│ 💪 Physical Treatment           │
│ Regular exercise, meditation... │
│                                 │
│ 💊 Common Medications           │
│ • Sertraline 50-200mg          │
│   SSRI antidepressant          │
│   Side effects: Nausea...      │
│                                 │
│ ✨ Coping Strategies            │
│ ✓ Deep breathing exercises     │
│ ✓ Progressive muscle relax...  │
│                                 │
│ 🏃 Lifestyle Changes            │
│ ✓ Sleep 7-9 hours daily       │
│ ✓ Exercise 30 mins daily      │
│                                 │
│ ⚠️ Professional Help            │
│ STRONGLY RECOMMENDED           │
│ This analysis is for info only. │
│                                 │
│ [Chat with AI] [New Symptoms]  │
│                                 │
└─────────────────────────────────┘
```

### 5. CHAT PAGE (💬)
```
┌─────────────────────────────────┐
│ 💬 Chat with AI Doctor          │
│ 24/7 Mental Health Support      │
├─────────────────────────────────┤
│ 🤖: Hello! I'm here to listen  │
│     and provide support.        │
│     How are you feeling?        │
│                                 │
│                  👤: I'm having │
│                  trouble        │
│                  sleeping       │
│                                 │
│ 🤖: Sleep issues can be        │
│     challenging. Let's talk     │
│     about what helps...         │
│                                 │
│                  👤: I drink   │
│                  a lot of      │
│                  coffee        │
│                                 │
│ 🤖: Reducing caffeine might    │
│     help. Try:                  │
│     • Limit after 2 PM         │
│     • Green tea instead        │
│     • Relaxation before bed    │
│                                 │
├─────────────────────────────────┤
│ [Type your message...]  [Send]  │
│                                 │
│ ℹ️ This is an AI assistant      │
│    For crisis help: Call 988    │
│                                 │
└─────────────────────────────────┘
```

### 6. PROFILE PAGE (👤)
```
┌─────────────────────────────────┐
│ 👤 Your Profile                 │
│ Manage your personal info       │
├─────────────────────────────────┤
│                                 │
│ Nickname: [TestUser_________]   │
│                                 │
│ Age: [25 ▼]                     │
│                                 │
│ Gender: [Male ▼]                │
│                                 │
│ Height (cm): [170___]           │
│                                 │
│ Weight (kg): [70__]             │
│                                 │
│        [  SAVE CHANGES  ]        │
│                                 │
├─────────────────────────────────┤
│ Account Information             │
│                                 │
│ Email: test@example.com         │
│ Member Since: Jan 29, 2026      │
│                                 │
│ Symptom History: 5 entries     │
│ Diagnosis History: 2 entries   │
│                                 │
└─────────────────────────────────┘
```

---

## 🎨 Color Palette

```
PRIMARY COLORS
┌──────────────────────────────────┐
│ Soft Sky Blue    │ #87CEEB       │
│ Soft Pink        │ #FFB6C1       │
│ Soft Purple      │ #DDA0DD       │
│ White            │ #FFFFFF       │
└──────────────────────────────────┘

ACCENT COLORS
┌──────────────────────────────────┐
│ Light Background │ #F9F9F9       │
│ Border Color     │ #DDDDDD       │
│ Text Primary     │ #333333       │
│ Text Secondary   │ #666666       │
└──────────────────────────────────┘

BUTTON COLORS
┌──────────────────────────────────┐
│ Primary Button   │ Sky Blue      │
│ Secondary Button │ Pink          │
│ Danger Button    │ Red (#ff6b6b) │
│ Success          │ Green         │
└──────────────────────────────────┘
```

---

## 🔄 User Journey

```
START
  │
  ├─→ First Time?
  │     │
  │     ├─→ Register Page
  │     │     │
  │     │     └─→ Create Account
  │     │         │
  │     │         └─→ Login
  │     │
  │     └─→ Fill Profile Info
  │
  ├─→ Existing User?
  │     │
  │     └─→ Login Page
  │
  ├─→ HOME PAGE (Dashboard)
  │     │
  │     ├─→ Record Symptoms (❤️)
  │     │     │
  │     │     ├─→ Select Symptoms
  │     │     ├─→ Add Details
  │     │     │
  │     │     └─→ ANALYZE
  │     │         │
  │     │         └─→ View Diagnosis (👨‍⚕️)
  │     │             │
  │     │             ├─→ See Results
  │     │             ├─→ Read Treatments
  │     │             │
  │     │             └─→ Chat with AI (💬)
  │     │                 │
  │     │                 └─→ Get Support
  │     │
  │     ├─→ Chat with AI (💬)
  │     │     │
  │     │     └─→ 24/7 Conversation
  │     │
  │     └─→ Profile (👤)
  │         │
  │         └─→ Update Info
  │
  └─→ VIEW HISTORY
        │
        ├─→ Past Symptoms
        ├─→ Past Diagnoses
        │
        └─→ TRACK PROGRESS
```

---

## 🖱️ Navigation Flow

```
LOGIN/REGISTER
      │
      ↓
   HOME
      │
      ├─→ ❤️ SYMPTOMS ─→ View/Record Symptoms ─→ DIAGNOSIS
      │
      ├─→ 👨‍⚕️ DIAGNOSIS ─→ View Results ─→ CHAT
      │
      └─→ 👤 PROFILE ─→ Update Info ─→ View History

[Always accessible from bottom navigation bar]
```

---

## 📊 Data Flow

```
USER INPUT
    │
    ├─→ Register/Login
    │     │
    │     └─→ JWT Token Generated
    │
    ├─→ Record Symptoms
    │     │
    │     └─→ MongoDB: Symptom Collection
    │
    ├─→ AI Analysis
    │     │
    │     ├─→ Diagnosis Engine
    │     │
    │     └─→ MongoDB: Diagnosis Collection
    │
    ├─→ Chat Message
    │     │
    │     ├─→ AI Processing
    │     │
    │     └─→ MongoDB: Chat Collection
    │
    └─→ Profile Update
          │
          └─→ MongoDB: User Collection
```

---

## 🎯 Button Layout

```
PRIMARY ACTION BUTTONS
[Analyze Symptoms] - Submits symptom form
[Chat with AI]     - Opens chat interface
[Save Changes]     - Updates profile
[Send]             - Sends chat message

SECONDARY BUTTONS
[Register]         - Goes to registration
[Login]            - Submits login
[New Symptoms]     - Records new symptoms
[View Profile]     - Opens profile page

NAVIGATION (Bottom Bar)
❤️  Symptoms
👨‍⚕️  AI Doctor
👤 Profile
```

---

## 🎭 Visual Hierarchy

```
LEVEL 1 (Most Important)
├─ App Title/Heading
├─ Critical Information (Diagnosis)
└─ Call-to-Action Buttons

LEVEL 2 (Important)
├─ Subheadings
├─ Form Inputs
└─ Secondary Buttons

LEVEL 3 (Supporting)
├─ Descriptions
├─ Helper Text
└─ Metadata
```

---

## 📱 Responsive Breakpoints

```
MOBILE (< 600px)
├─ Single column layout
├─ Stacked buttons
├─ Larger touch targets
└─ Adjusted padding

TABLET (600px - 1024px)
├─ Two column layout
├─ Side-by-side content
├─ Grid buttons
└─ Balanced spacing

DESKTOP (> 1024px)
├─ Full width content
├─ Multi-column layout
├─ Hover effects
└─ Maximum width containers
```

---

## ✨ Animation Effects

```
TRANSITIONS
- Button hover: Slight scale up
- Link hover: Color change
- Form focus: Border color change
- Page load: Fade in effect

INTERACTIONS
- Symptom selection: Toggle highlight
- Message send: Smooth scroll
- Profile update: Success message
```

---

## 🔐 Authentication Flow

```
LOGIN/REGISTER
    │
    ├─→ Validate Input
    │
    ├─→ Check Database
    │
    ├─→ Hash Password
    │
    ├─→ Generate JWT Token
    │
    ├─→ Store Token (Local Storage)
    │
    └─→ Redirect to Home
         │
         └─→ Send Token with Every Request
             │
             └─→ Backend Validates Token
                 │
                 └─→ Allow Access / Deny Access
```

---

**This visual guide helps understand the app layout and user experience!**

**Version**: 1.0.0
**Last Updated**: January 29, 2026
