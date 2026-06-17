#!/data/data/com.termux/files/usr/bin/bash

GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

clear

echo -e "${GREEN}"
cat << "EOF"


████████╗███████╗██████╗ ███╗   ███╗██╗   ██╗██╗  ██╗
╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║   ██║╚██╗██╔╝
   ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║ ╚███╔╝
   ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║ ██╔██╗
   ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗
   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝

███╗   ███╗██╗   ██╗███╗   ██╗██████╗ ███████╗███████╗██████╗
████╗ ████║██║   ██║████╗  ██║██╔══██╗██╔════╝██╔════╝██╔══██╗
██╔████╔██║██║   ██║██╔██╗ ██║██║  ██║█████╗  █████╗  ██████╔╝
██║╚██╔╝██║██║   ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══╝  ██╔══██╗
██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██████╔╝███████╗███████╗██║  ██║
╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝

EOF
echo -e "${RESET}"

echo -e "${CYAN}Custom APT Repository By Technical Mundeer${RESET}"
echo

echo -e "${YELLOW}[+] Updating Package Lists...${RESET}"
apt update -y

echo -e "${YELLOW}[+] Creating Repository Config...${RESET}"
mkdir -p $PREFIX/etc/apt/sources.list.d

echo "deb [trusted=yes] https://technicalmundeeryt.github.io/repo repo main" > \
$PREFIX/etc/apt/sources.list.d/termuxmundeer.list

echo -e "${YELLOW}[+] Refreshing Repositories...${RESET}"
apt update -y

echo
echo -e "${GREEN}========================================${RESET}"
echo -e "${GREEN}✓ TERMUX MUNDEER REPOSITORY INSTALLED${RESET}"
echo -e "${GREEN}========================================${RESET}"
echo

echo -e "${CYAN}YouTube : https://youtube.com/@TechnicalMundeer${RESET}"
echo -e "${CYAN}Telegram: https://t.me/TechnicalMundeerYT${RESET}"
echo

echo -e "${GREEN}Now Use:${RESET}"
echo "apt install <package-name>"
