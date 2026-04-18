#!/bin/bash

# Kolory dla klimatu COTN
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NEON_PINK='\033[1;35m'
NC='\033[0m' 

clear

# Nagłówek ASCII
echo -e "${NEON_PINK}"
cat << "EOF"
   __  ___           __      __  _    _      __      
  /  |/  /___ _ ___ / /_    / / | |  | | ___/ /____ _
 / /|_/ // _ `// _ `// __/   / _ \ | |/| |/ _ `// __/ _ `/
/_/  /_/ \_,_/ \_, / \__/   /_//_/ |__/|__/\_,_/\__/ \_,_/ 
              /___/                                        
EOF
echo -e "${NC}"

echo -e "${CYAN}--- STATUS SYSTEMU ---${NC}"
echo -e "GODZINA: $(date +'%H:%M:%S')"
echo -e "UŻYCIE RAM: $(free -h | awk '/^Mem:/ {print $3 "/" $2}')"

echo -e "\n${PURPLE}🌙 KLIMAT NOCY:${NC}"
python3 logic.py

echo -e "\n${CYAN}🗼 POGODA W TOKYO:${NC}"
# Wywołanie skryptu Node.js
node weather.js

echo -e "\n${NEON_PINK}-----------------------${NC}"