# Resume Builder - Deployment Guide

## 🚀 Quick Deployment Options

### Option 1: Vercel (Recommended - Free)

#### Frontend Deployment:
1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Ready for deployment"
   git push origin main
   ```

2. **Deploy to Vercel:**
   - Go to [vercel.com](https://vercel.com)
   - Sign up/Login with GitHub
   - Click "New Project"
   - Import your GitHub repository
   - Set build settings:
     - Framework Preset: Vite
     - Build Command: `npm run build`
     - Output Directory: `dist`
   - Add Environment Variables:
     - `VITE_API_URL`: Your backend URL (after backend deployment)

#### Backend Deployment:
1. **Create separate backend repository:**
   ```bash
   # Create new repo for backend
   mkdir resume-builder-backend
   cd resume-builder-backend
   # Copy backend folder contents
   ```

2. **Deploy backend to Vercel:**
   - Create new Vercel project for backend
   - Set root directory to backend folder
   - Add Environment Variables:
     - `MONGODB_URI`: Your MongoDB connection string
     - `JWT_SECRET`: Your secret key
   - Deploy

### Option 2: Railway (Alternative - Free tier)

#### Backend Deployment:
1. Go to [railway.app](https://railway.app)
2. Connect GitHub account
3. Create new project from GitHub repo
4. Set environment variables
5. Deploy

#### Frontend Deployment:
1. Use Vercel or Netlify for frontend
2. Update API URL to Railway backend URL

### Option 3: Render (Alternative - Free tier)

#### Backend Deployment:
1. Go to [render.com](https://render.com)
2. Create new Web Service
3. Connect GitHub repository
4. Set build command: `npm install`
5. Set start command: `npm start`
6. Add environment variables

## 🔧 Environment Variables

### Frontend (.env):
```env
VITE_API_URL=https://your-backend-url.vercel.app
```

### Backend (.env):
```env
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/resume_builder
JWT_SECRET=your-super-secret-key-here
PORT=3002
```

## 📦 Database Setup

### MongoDB Atlas (Recommended):
1. Create account at [mongodb.com](https://mongodb.com)
2. Create new cluster
3. Get connection string
4. Add to backend environment variables

### Local MongoDB:
- Install MongoDB locally
- Use connection string: `mongodb://127.0.0.1:27017/resume_builder`

## 🚀 Deployment Steps Summary

1. **Prepare Code:**
   - ✅ Environment variables configured
   - ✅ API URLs updated
   - ✅ Build scripts ready

2. **Deploy Backend:**
   - Choose platform (Vercel/Railway/Render)
   - Set environment variables
   - Deploy and get URL

3. **Deploy Frontend:**
   - Update API URL to backend URL
   - Deploy to Vercel/Netlify
   - Test functionality

4. **Test:**
   - Register/Login
   - Create resume
   - Save and load
   - Export PDF

## 🔗 Quick Deploy Links

- **Vercel:** https://vercel.com
- **Railway:** https://railway.app  
- **Render:** https://render.com
- **MongoDB Atlas:** https://mongodb.com

## 📝 Post-Deployment Checklist

- [ ] Backend API responding
- [ ] Frontend loading correctly
- [ ] User registration working
- [ ] Resume creation working
- [ ] PDF export working
- [ ] Template switching working
- [ ] All forms saving data
- [ ] Mobile responsive

## 🆘 Troubleshooting

### Common Issues:
1. **CORS errors:** Check backend CORS configuration
2. **API not found:** Verify API URL in frontend
3. **Database connection:** Check MongoDB URI
4. **Build failures:** Check Node.js version compatibility

### Support:
- Check console errors in browser
- Check server logs in deployment platform
- Verify environment variables are set correctly
