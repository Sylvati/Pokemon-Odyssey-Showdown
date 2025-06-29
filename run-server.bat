@echo off
cd /d "%~dp0pokemon-showdown"
npm install
npm run build
start "Showdown Server" cmd /k "node pokemon-showdown start --no-security"
