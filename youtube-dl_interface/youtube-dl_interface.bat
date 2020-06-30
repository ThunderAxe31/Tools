:: Minimal youtube-dl interface by ThunderAxe31. It's the easiest way to download YouTube, Twitch, and Nicovideo videos
:: Resumes download automatically in case of network error. It stops only when the download is complete (or when you close the window)

:: HOW TO USE IT:
:: Go on your web browser and copy the video url,
:: Open this file (make sure that the file name ends with .bat),
:: A cmd window will appear. Right-click on it, paste, press Enter.

@echo off

:: Set the directory address in where youtube-dl.exe is located.
::If you're unsure, leave unchanged and put youtube-dl.exe in the same directory as the .bat file.
cd "%~dp0"

:: Don't change the following, unless you know what you're doing
set /p url="right click here, paste video url and press enter: "

:loop
if not "x%url:nicovideo=%"=="x%url%" if not "x%url:?=%"=="x%url%" set "url=%url:~0,-1%"
if not "x%url:nicovideo=%"=="x%url%" if not "x%url:?=%"=="x%url%" goto loop


:retry
:: Replace "my_username" with your Nicovideo username, and replace "my_password" with your Nicovideo password. Don't worry, it's safe.
if not "x%url:nicovideo=%"=="x%url%" call "C:\Users\ThunderAxe31\youtube-dl\youtube-dl.exe" %url% --no-check-certificate --username my_username --password my_password
if "x%url:nicovideo=%"=="x%url%" call "C:\Users\ThunderAxe31\youtube-dl\youtube-dl.exe" %url% --no-check-certificate

if not %errorlevel% == 0 goto retry

pause
