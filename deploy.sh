#!/bin/bash

echo "🚀 Resume Builder Deployment Script"
echo "=================================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git not initialized. Please run:"
    echo "   git init"
    echo "   git add ."
    echo "   git commit -m 'Initial commit'"
    echo "   git remote add origin YOUR_GITHUB_REPO_URL"
    echo "   git push -u origin main"
    exit 1
fi

# Build the project
echo "📦 Building frontend..."
npm run build

if [ $? -eq 0 ]; then
    echo "✅ Frontend built successfully!"
else
    echo "❌ Frontend build failed!"
    exit 1
fi

# Check if backend dependencies are installed
echo "🔧 Checking backend dependencies..."
cd backend
if [ ! -d "node_modules" ]; then
    echo "📦 Installing backend dependencies..."
    npm install
fi
cd ..

echo ""
echo "🎉 Ready for deployment!"
echo ""
echo "Next steps:"
echo "1. Push to GitHub:"
echo "   git add ."
echo "   git commit -m 'Ready for deployment'"
echo "   git push origin main"
echo ""
echo "2. Deploy Backend:"
echo "   - Go to https://vercel.com"
echo "   - Create new project"
echo "   - Import backend folder"
echo "   - Set environment variables"
echo ""
echo "3. Deploy Frontend:"
echo "   - Go to https://vercel.com"
echo "   - Create new project"
echo "   - Import main repository"
echo "   - Set VITE_API_URL to backend URL"
echo ""
echo "📖 See DEPLOYMENT.md for detailed instructions"
