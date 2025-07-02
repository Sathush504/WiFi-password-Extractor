# WiFi Password Extractor (Windows Batch Script)

## Description
This batch script retrieves all saved Wi-Fi profiles on a Windows system and extracts their associated passwords (if available). The results are saved in a file named `WiFiPasswords.txt`.

## How It Works
1. The script uses the `netsh wlan show profiles` command to list all saved Wi-Fi profiles.
2. For each profile, it attempts to extract the password using:

netsh wlan show profile name="SSID" key=clear

3. Passwords (if found) are saved in a readable format in `WiFiPasswords.txt`.

## Output Format
Each line in the output file will show the Wi-Fi SSID followed by its password:

Saved Wi‑Fi Profiles and Passwords:

HomeNetwork : mypassword123
OfficeWiFi : (no password found)
Cafe123 : secretpass456


## Output File
- `WiFiPasswords.txt`  
  Located in the same directory as the script. Contains all results.

## Requirements
- **OS**: Windows 7, 8, 10, or 11  
- **Privileges**: Must be run as **Administrator** for access to stored keys.

## How to Use
1. Right-click the `.bat` file and choose **Run as administrator**.  
2. Wait for the process to complete.  
3. Review `WiFiPasswords.txt` in the script’s folder.

## Disclaimer
This script is intended **only for educational or personal recovery purposes**. Unauthorized access to networks without permission is illegal and unethical.

## Notes
- Some networks may not have saved passwords (e.g., enterprise logins or open networks).  
- Passwords are stored in plaintext only if the system has saved them.

---



  _________       __  .__                 .__        __________ 
 /   _____/____ _/  |_|  |__  __ __  _____|  |__     \______   \
 \_____  \\__  \\   __\  |  \|  |  \/  ___/  |  \     |       _/
 /        \/ __ \|  | |   Y  \  |  /\___ \|   Y  \    |    |   \
/_______  (____  /__| |___|  /____//____  >___|  /____|____|_  /
        \/     \/          \/           \/     \/_____/      \/ 



⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⠶⠶⠶⠶⠤⢤⣀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⠤⠶⠶⠦⠤⣄⡈⠙⠲⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠉⠳⣄⠈⢳⡀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠁⠀⠉⠑⠦⡀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠹⡄
⠀⠀⠀⠀⠀⠀⢀⡏⠀⠀⣠⡀⠀⠀⠀⠘⡆⠀⠀⠀⠀⠀⠀⠀⢳⣀⡇
⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⠈⠀⠀⠀⠀⠀⣷⠖⠋⠉⠑⠒⠦⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⢧⡀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀
⠀⠀⣀⡤⠤⢤⣘⢦⡙⠢⠤⢤⡤⠴⠋⡇⠀⠀⠀⠐⠶⠀⠀⠀⢸⠀⠀
⠀⡼⢁⣴⣶⣶⣌⠑⠉⠑⢠⠞⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⢀⡼⠀⠀
⢸⠁⣿⣿⣿⣿⣷⠷⣄⠀⣏⣀⡴⠊⠀⠀⠙⠦⢄⣀⣀⣀⡤⠚⠁⠀⠀
⠸⡄⣿⣿⣿⣿⣿⣿⡏⢳⣄⣀⠀⠀⠀⠀⠑⢦⣀⣀⣀⡄⠀⠀⠀⠀⠀
⠀⢳⡸⡿⣿⣿⣿⣿⣿⣿⣤⣿⣩⣿⣩⣷⣶⣤⡀⠀⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠱⣝⢿⢻⣿⣿⣿⣿⣿⣿⠻⠿⢿⣿⣿⣿⣿⣦⠹⡄⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠓⠙⢦⣿⠛⣿⣿⣿⣷⣦⠀⠙⣿⣿⣿⣿⡇⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠑⠯⣼⡿⠛⡿⣇⠀⢹⣿⣿⡿⣰⠃⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠓⢛⣒⢛⣋⡩⠞⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠘⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
