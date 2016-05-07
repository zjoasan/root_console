#!/bin/bash
sudo dialog --title "Installing console launcher" --msgbox "\nPlease wait...\n" 11 70
wget -q -O install_root-vtconsole.zip https://github.com/zjoasan/root_console/blob/master/install_root-vtconsole.zip?raw=true
sleep 5
unzip -q -o install_root-vtconsole.zip 
chmod +x /home/osmc/root-console/consolestart.sh 2>&1
chmod +x /home/osmc/root-console/console_init.sh  2>&1
rm -f install_root-vtconsole.zip 2>&1
xbmc-send -a "UpdateLocalAddons" >/dev/null
dialog  --title "Important information" --msgbox "\nThis is a root console, which means you can do real damage to your system if you don't know what you are doing.\n\nRight now the script runs in the same resolution as Kodi, which means really small text if you run Kodi in 1920x1080\n\nThis might chang in future releases\n\nType 'exit' in console to go back to kodi"  11 70
dialog --title "Installation finnished!" --msgbox "\nType 'exit' in console to return to Kodi.\n\nThank you for using my installer\n"  11 70
exit

