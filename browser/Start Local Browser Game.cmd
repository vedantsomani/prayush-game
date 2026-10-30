@echo off
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 (echo Node.js is required to run the local test. & pause & exit /b 1)
if not exist "node_modules\wrangler\bin\wrangler.js" (
  echo Installing local test tools. This can take a few minutes.
  call npm install
  if errorlevel 1 (echo Installation failed. & pause & exit /b 1)
)
start "" "http://127.0.0.1:8765/"
call npm start
pause
