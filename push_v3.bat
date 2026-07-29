@echo off
echo ========================================
echo  FitOS v3 - Fix lock + Push to GitHub
echo ========================================
echo.

cd /d "C:\Users\milic\OneDrive\Documents\Claude\Projects\Body transformation Build"

:: Remove stale git lock files
if exist ".git\HEAD.lock" del /f ".git\HEAD.lock"
if exist ".git\index.lock" del /f ".git\index.lock"
if exist ".git\objects\maintenance.lock" del /f ".git\objects\maintenance.lock"
echo Lock files cleared.

:: Disable auto garbage collection globally and per-repo
git config --global gc.auto 0
git config --global gc.autopacklimit 0
git config --global maintenance.auto false
git config gc.auto 0

:: Configure identity
git config --global user.email "elihathaway32@gmail.com"
git config --global user.name "Eli Hathaway"

:: Sync index.html from FitOS_App.html (GitHub Pages serves index.html)
echo.
echo Syncing index.html...
copy /Y FitOS_App.html index.html

:: Stage latest files
echo.
echo Staging...
git add FitOS_App.html index.html manifest.json sw.js

:: Commit
echo.
echo Committing...
git commit -m "FitOS latest build"

:: Push — gc.auto=0 passed inline as final override
echo.
echo Pushing...
echo (Enter your GitHub Personal Access Token when prompted for password)
echo.
git -c gc.auto=0 -c maintenance.auto=false push -u origin main --force

echo.
echo ========================================
echo  Done! Visit https://elihathaway32-del.github.io/fitos
echo  Hard refresh: Ctrl+Shift+R
echo ========================================
pause
