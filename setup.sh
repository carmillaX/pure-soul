#!/bin/bash
# Quick setup script for Pure Soul App

echo "================================"
echo "Pure Soul - Quick Setup Script"
echo "================================"
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

echo "✅ Node.js found: $(node -v)"
echo ""

# Install root dependencies
echo "📦 Installing root dependencies..."
npm install
echo "✅ Root dependencies installed"
echo ""

# Setup backend
echo "🔧 Setting up backend..."
cd backend
npm install
cp .env.example .env
echo "✅ Backend setup complete"
echo "⚠️  Please edit backend/.env with your configuration"
echo ""

# Setup frontend
cd ../frontend
echo "🎨 Setting up frontend..."
npm install
echo "✅ Frontend setup complete"
echo ""

# Back to root
cd ..

echo "================================"
echo "✨ Setup Complete!"
echo "================================"
echo ""
echo "Next steps:"
echo "1. Edit backend/.env with your MongoDB URI and JWT secret"
echo "2. Start backend: cd backend && npm run dev"
echo "3. Start frontend: cd frontend && npm start"
echo ""
echo "Frontend will open at: http://localhost:3000"
echo "Backend API at: http://localhost:5000"
echo ""
