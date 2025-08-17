# OpenAI API Setup Guide

This resume builder now includes AI-powered resume analysis using OpenAI's GPT-3.5-turbo model. Follow these steps to enable AI features:

## 1. Get an OpenAI API Key

1. Go to [OpenAI Platform](https://platform.openai.com/api-keys)
2. Sign up or log in to your OpenAI account
3. Click "Create new secret key"
4. Copy the generated API key (it starts with `sk-`)

## 2. Configure the API Key

### Option A: Using .env file (Recommended)
1. Create a `.env` file in the root directory of the project
2. Add the following line:
   ```
   VITE_OPENAI_API_KEY=sk-your-actual-api-key-here
   ```
3. Replace `sk-your-actual-api-key-here` with your actual API key

### Option B: Using environment variables
Set the environment variable before starting the development server:
```bash
# Windows (PowerShell)
$env:VITE_OPENAI_API_KEY="sk-your-actual-api-key-here"
npm run dev

# Windows (Command Prompt)
set VITE_OPENAI_API_KEY=sk-your-actual-api-key-here
npm run dev

# macOS/Linux
export VITE_OPENAI_API_KEY="sk-your-actual-api-key-here"
npm run dev
```

## 3. Restart the Development Server

After adding the API key, restart your development server:
```bash
npm run dev
```

## 4. Using AI Features

Once configured, you can:

### Resume Analysis
- Click "AI Analyze Resume" in the Resume Analyzer component
- Get detailed AI-powered feedback on your resume
- Receive specific suggestions for improvement
- See strengths and areas for improvement

### AI vs Local Analysis
- Toggle between "AI" and "Local" modes
- AI mode uses OpenAI GPT-3.5-turbo for advanced analysis
- Local mode uses built-in rules for basic analysis
- If AI is not configured, it automatically falls back to local analysis

## 5. API Costs

- OpenAI charges per token used
- Resume analysis typically costs $0.001-0.005 per analysis
- Monitor your usage at [OpenAI Usage Dashboard](https://platform.openai.com/usage)

## 6. Troubleshooting

### "OpenAI API Not Configured" Error
- Make sure you've created the `.env` file correctly
- Verify the API key is valid and starts with `sk-`
- Restart the development server after adding the key

### "API Error" Messages
- Check your internet connection
- Verify your API key is valid
- Check your OpenAI account balance
- Ensure you haven't exceeded rate limits

### Fallback to Local Analysis
- If AI analysis fails, the app automatically uses local analysis
- You'll see a notification about the fallback
- Local analysis is always available and free

## 7. Security Notes

- Never commit your `.env` file to version control
- The `.env` file is already in `.gitignore`
- Keep your API key secure and don't share it publicly
- Consider using environment variables in production

## 8. Features

### AI-Powered Analysis
- Intelligent scoring based on resume content
- Detailed feedback on strengths and weaknesses
- Actionable suggestions for improvement
- Professional summary analysis

### Multiple Layout Templates
- **Modern**: Clean design with blue accents
- **Classic**: Traditional professional layout
- **Creative**: Bold design with purple/pink gradients
- **Minimal**: Simple and clean focus on content

### Real-time Preview
- Live preview updates as you type
- Template switching with instant visual feedback
- Responsive design for all screen sizes

## Support

If you encounter issues:
1. Check the browser console for error messages
2. Verify your API key configuration
3. Test with local analysis first
4. Check OpenAI service status at [status.openai.com](https://status.openai.com) 