@echo off
cd /d "%~dp0pokemon-showdown-client"
npm install
npm run build
start "Showdown Client" cmd /c "echo Client built. Close this window anytime & pause"
