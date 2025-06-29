@echo off
:: 🚀 Launch the server in a new window that stays open
start "Showdown Server" cmd /k ^
  "cd /d "%~dp0../pokemon-showdown" && npm install && npm run build && node pokemon-showdown start --no-security"

:: ⏳ Wait for the server to start
timeout /t 5 >nul

:: 🏗️ Open client build window, closes when done
start "Showdown Client" cmd /c ^
  "cd /d "%~dp0pokemon-showdown-client" && npm install && npm run build full"

:: ⏳ Wait for build to finish
timeout /t 2 >nul

:: 🌐 Open Firefox pointing to your test client URL
start "" "%ProgramFiles%\Mozilla Firefox\firefox.exe" ^
  "file:///E:/Coding Projects/Pokemon Odyssey Showdown/pokemon-showdown-client/play.pokemonshowdown.com/testclient.html?~~localhost:8000"

exit
