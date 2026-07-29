@echo off
echo ========================================
echo  FitOS - Push to GitHub Pages
echo ========================================
echo.

cd /d "C:\Users\milic\OneDrive\Documents\Claude\Projects\Body transformation Build"

:: Configure git identity
git config --global user.email "elihathaway32@gmail.com"
git config --global user.name "Eli Hathaway"
echo Git identity set.

:: Set up git if not already done
git rev-parse --git-dir >nul 2>&1
if errorlevel 1 (
  echo Initialising git repo...
  git init
  git remote add origin https://github.com/elihathaway32-del/fitos.git
  git checkout -b main
) else (
  echo Git repo already initialised.
  git remote set-url origin https://github.com/elihathaway32-del/fitos.git 2>nul
)

echo.
echo Staging files...
git add FitOS_App.html index.html manifest.json sw.js icon-192.png icon-512.png 2>nul

echo.
echo Committing...
git commit -m "FitOS v2: food scanner, recipes, set logging UX, Sunday check-in"

echo.
echo Pushing to GitHub...
echo (When prompted for password, use your GitHub Personal Access Token)
echo.
git push -u origin main --force

echo.
echo ========================================
echo  Done! Wait ~60 seconds then visit:
echo  https://elihathaway32-del.github.io/fitos
echo  Hard refresh: Ctrl+Shift+R
echo ========================================
pause
