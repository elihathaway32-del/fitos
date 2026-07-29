@echo off
title Gym Tracker Server
cd /d "C:\Users\milic\OneDrive\Documents\Claude\Projects\Body transformation Build"
echo Starting Gym Tracker...
echo.

:: Try Python launcher (py) first - most reliable on Windows 10/11
where py >nul 2>&1
if %errorlevel%==0 (
    echo Found Python - starting server...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://localhost:8765/Gym_Tracker_App.html"
    py -m http.server 8765
    goto end
)

:: Try python command
where python >nul 2>&1
if %errorlevel%==0 (
    echo Found Python - starting server...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://localhost:8765/Gym_Tracker_App.html"
    python -m http.server 8765
    goto end
)

:: Try python3 command
where python3 >nul 2>&1
if %errorlevel%==0 (
    echo Found Python3 - starting server...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://localhost:8765/Gym_Tracker_App.html"
    python3 -m http.server 8765
    goto end
)

:: Try Node.js npx serve
where node >nul 2>&1
if %errorlevel%==0 (
    echo Found Node.js - starting server...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://localhost:8765/Gym_Tracker_App.html"
    npx serve -p 8765 -s .
    goto end
)

echo.
echo ERROR: Neither Python nor Node.js found.
echo Please install Python from https://python.org
echo Make sure to check "Add Python to PATH" during install.
echo.
pause

:end
