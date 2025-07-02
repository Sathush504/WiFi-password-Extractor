@echo off
setlocal enabledelayedexpansion

REM Initialize or clear output file
>WiFiPasswords.txt echo Saved Wi‑Fi Profiles and Passwords: & echo.

for /F "tokens=2 delims=:" %%a in ('netsh wlan show profiles ^| findstr "All User Profile"') do (
    set "ssid=%%a"
    set "ssid=!ssid:~1!"  & REM trim leading space

    set "wifi_pwd="
    for /F "tokens=2 delims=:" %%F in ('netsh wlan show profile name^="!ssid!" key^=clear ^| find "Key Content"') do (
        set "wifi_pwd=%%F"
        set "wifi_pwd=!wifi_pwd:~1!"
    )

    if defined wifi_pwd (
        echo !ssid! : !wifi_pwd!>>WiFiPasswords.txt
    ) else (
        echo !ssid! : (no password found)>>WiFiPasswords.txt
    )
)

echo Output saved to WiFiPasswords.txt
type WiFiPasswords.txt
pause
