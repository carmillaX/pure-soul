@echo off
REM Quick setup script for Pure Soul App (Windows)

echo ================================
echo Pure Soul - Quick Setup Script
echo ================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Node.js is not installed. Please install Node.js first.
    pause
    exit /b 1
)

echo ✅ Node.js found: 
node -v
echo.

REM Install root dependencies
echo 📦 Installing root dependencies...
call npm install
echo ✅ Root dependencies installed
echo.

REM Setup backend
echo 🔧 Setting up backend...
cd backend
call npm install
copy .env.example .env
echo ✅ Backend setup complete
echo ⚠️  Please edit backend\.env with your configuration
echo.

REM Setup frontend
cd ..\frontend
echo 🎨 Setting up frontend...
call npm install
echo ✅ Frontend setup complete
echo.

REM Back to root
cd ..

echo ================================
echo ✨ Setup Complete!
echo ================================
echo.
echo Next steps:
echo 1. Edit backend\.env with your MongoDB URI and JWT secret
echo 2. Start backend: cd backend ^&^& npm run dev
echo 3. Start frontend: cd frontend ^&^& npm start
echo.
echo Frontend will open at: http://localhost:3000
echo Backend API at: http://localhost:5000
echo.
pause
