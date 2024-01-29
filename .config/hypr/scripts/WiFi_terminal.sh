#!/bin/bash
echo ''
echo ''
echo '██╗    ██╗██╗███████╗██╗              ███████╗███████╗'
echo '██║    ██║██║██╔════╝██║              ██╔════╝╚══███╔╝'
echo '██║ █╗ ██║██║█████╗  ██║    █████╗    █████╗    ███╔╝ '
echo '██║███╗██║██║██╔══╝  ██║    ╚════╝    ██╔══╝   ███╔╝  '
echo '╚███╔███╔╝██║██║     ██║              ███████╗███████╗'
echo ' ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝              ╚══════╝╚══════╝'

echo ''
echo ''

nmcli device wifi rescan
nmcli device wifi list

echo ''
echo -n -e "\e[33mSSID WiFi: \e[0m"
read ssid
echo -n -e "\e[36mWiFi password: \e[0m"
read -s password
echo

if nmcli device wifi connect "$ssid" password "$password"; then
    dunstify -t 4000 -u normal "Success connection to $ssid."
else
    dunstify -t 4000 -u critical "Can't to connect to «$ssid»."
fi
