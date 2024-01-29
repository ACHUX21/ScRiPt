#!/bin/bash

echo "0x157 was here <3" && sleep 2 && clear

# Define colors for terminal output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print ASCII art
echo -e "${GREEN}

:::'###:::::'######::'##::::'##:'##::::'##:'##::::'##::'#######:::::'##:::
::'## ##:::'##... ##: ##:::: ##: ##:::: ##:. ##::'##::'##.... ##::'####:::
:'##:. ##:: ##:::..:: ##:::: ##: ##:::: ##::. ##'##:::..::::: ##::.. ##:::
'##:::. ##: ##::::::: #########: ##:::: ##:::. ###:::::'#######::::: ##:::
 #########: ##::::::: ##.... ##: ##:::: ##::: ## ##:::'##::::::::::: ##:::
 ##.... ##: ##::: ##: ##:::: ##: ##:::: ##:: ##:. ##:: ##::::::::::: ##:::
 ##:::: ##:. ######:: ##:::: ##:. #######:: ##:::. ##: #########::'######:
..:::::..:::......:::..:::::..:::.......:::..:::::..::.........:::......::

${NC}"


# Make script executable
echo -e "${YELLOW}Making script executable...${NC}"
sudo chmod +x jump.sh


# Move compiled script to /usr/local/j
echo -e "${YELLOW}Moving compiled script to /usr/local/bin/j...${NC}"
sudo cp jump.sh /usr/local/bin/j
