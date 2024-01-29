#!/bin/bash


GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' 

full_dir=$(find / -type d 2>/dev/null |grep $1|fzf --preview 'ls {}')
echo -e "${BLUE}$full_dir${NC}"
cd "$full_dir"
