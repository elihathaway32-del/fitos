@echo off
echo ========================================
echo  FitOS - Download Exercise GIFs
echo  Source: Wikimedia Commons (public domain)
echo ========================================
echo.

cd /d "C:\Users\milic\OneDrive\Documents\Claude\Projects\Body transformation Build"
if not exist "gifs" mkdir gifs

set UA=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36

echo Downloading from Wikimedia Commons...
curl -L -o gifs\bench.gif         "https://upload.wikimedia.org/wikipedia/commons/8/80/Bench_press_animation.gif"                  -A "%UA%"
curl -L -o gifs\squat.gif         "https://upload.wikimedia.org/wikipedia/commons/f/f3/Squats.gif"                                  -A "%UA%"
curl -L -o gifs\pull.gif          "https://upload.wikimedia.org/wikipedia/commons/3/3b/Pull_up_animation.gif"                       -A "%UA%"
curl -L -o gifs\curl.gif          "https://upload.wikimedia.org/wikipedia/commons/3/38/Curl_animation.gif"                          -A "%UA%"
curl -L -o gifs\lateral.gif       "https://upload.wikimedia.org/wikipedia/commons/4/44/Lateral_raise_animation.gif"                 -A "%UA%"
curl -L -o gifs\row.gif           "https://upload.wikimedia.org/wikipedia/commons/7/73/Bent-over-row-animation.gif"                 -A "%UA%"
curl -L -o gifs\shoulder-press.gif "https://upload.wikimedia.org/wikipedia/commons/2/2c/Overhead_press_animation.gif"              -A "%UA%"
curl -L -o gifs\leg-press.gif     "https://upload.wikimedia.org/wikipedia/commons/6/6c/Leg_press_animation.gif"                    -A "%UA%"
curl -L -o gifs\lunge.gif         "https://upload.wikimedia.org/wikipedia/commons/8/8a/Lunge_animation.gif"                        -A "%UA%"
curl -L -o gifs\leg-curl.gif      "https://upload.wikimedia.org/wikipedia/commons/0/0e/Leg_curl_animation.gif"                     -A "%UA%"
curl -L -o gifs\calf.gif          "https://upload.wikimedia.org/wikipedia/commons/2/2f/Standing_calf_raise_animation.gif"          -A "%UA%"

echo.
echo Results:
for %%f in (gifs\*.gif) do (
  for %%s in ("%%f") do (
    if %%~zs LSS 5000 (
      echo FAILED: %%f [%%~zs bytes]
    ) else (
      echo OK:     %%f [%%~zs bytes]
    )
  )
)
echo.
pause
