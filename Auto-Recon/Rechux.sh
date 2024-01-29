#!/bin/bash

set -e

#colorize
NC='\e[0m'           # No Color
Black='\e[0;30m'     # Black
Red='\e[0;31m'       # Red
Green='\e[0;32m'     # Green
Yellow='\e[0;33m'    # Yellow
Blue='\e[0;34m'      # Blue
Purple='\e[0;35m'    # Purple
Cyan='\e[0;36m'      # Cyan
White='\e[0;37m'     # White
Sed_NC='\x1B[0m'           # No Color for sed
Sed_Black='\x1B[0;30m'     # Black for sed
Sed_Red='\x1B[0;31m'       # Red for sed
Sed_Green='\x1B[0;32m'     # Green for sed
Sed_Yellow='\x1B[0;33m'    # Yellow for sed
Sed_Blue='\x1B[0;34m'      # Blue for sed
Sed_Purple='\x1B[0;35m'    # Purple for sed
Sed_Cyan='\x1B[0;36m'      # Cyan for sed
Sed_White='\x1B[0;37m'     # White for sed


banner ()
{
  echo;echo;echo
 cat banner
}

#variables
output_path=$(pwd)/results/
IP="$1"
open_port=""
tmp_file="tmp_file"

# * mkdir Dir for logs
mkdirectory () { rm -rf $1 ; mkdir -p $1 ; }
mkdirectory $output_path

# * tmp_file
tmp_file () { touch tmp_file ; }
rm_file () { rm tmp_file ; }

# * line
line() { [ -z "$1" ] && echo -e "${Red}------------------------------------------------------------------------------------------------${NC}" || echo -e "${Red}------------------------------------------------------------------------------------------------${NC}" >> "$1"; }

Full-portScan() {
                # * Ping checker
                while true; do
                    ping -c 1 $1 > /dev/null
                    if [ $? -eq 0 ]; then
                        line
                        echo -e "${Green}[+]${Nc} Host $HOST is reachable ${Green}[+]${Nc}"
                        break
                    fi
                done

                # * run rustscan && know open port
                # ? fast-scan () { rustscan -a $1  > tmp_file; }
                # ? tmp_file &> /dev/null
                # ? line
                # ? fast-scan $1
                # ? for port in $(cat tmp_file |awk -F":" '/Open/ {print $2}' |sort  | uniq); do open_port+="$port "; done
                # ? echo -e "${Green}[+]${Nc} ${Purple} $open_port: ${NC} are Open"
                # ? rm_file &> /dev/null
                # ? line

                # ! run nmap on the specific port
                nmap_file="$output_path/Nmap.log"
                touch $nmap_file
                echo -e "${Green}[+]${Nc} Scaning open_port using Nmap...${NC}"
                # ! nmap_port=$(echo -n $open_port | tr ' ' ',' | sed 's/,$//')
                line $nmap_file
                echo -e " ${Green}[+]${Nc} Nmap: $nmap_port scaning open_port using Nmap..." >> $nmap_file
                line
                # ! nmap -sCV $1 --script=vuln | grep -Ev "[0-6]\.[0-9]" | sed -E "s|([8-9]\.[0-9] )|${Sed_Red}\1${Sed_NC}|g ; s|([0-9]+)\/tcp|${Sed_Purple}\1${Sed_NC}\/tcp|g ; s|(open  )|${Sed_Green}\1${Sed_NC}|g" > $nmap_file
                nmap -sCV $1  | sed -E "s|([0-9]+)\/tcp|${Sed_Purple}\1${Sed_NC}\/tcp|g ; s|(open  )|${Sed_Green}\1${Sed_NC}|g" > $nmap_file

                cat $nmap_file
                echo -e "${Green}[+]${Nc} Nmap Finished Successfully "
                line $nmap_file
                line
}

# Dirsearch for files
dirsearch_file="$output_path/dirsearch.log"
Dirsearch ()
{
    line $dirsearch_file
    echo -e "${Green}[+]${Nc} Dirsearch Result" > $dirsearch_file
    line $dirsearch_file
    dirsearch -u $1 -o $dirsearch_file &>/dev/null
    line $dirsearch_file

}


# Subdomains

#Fuzzing_Domains ()
#{
  #  IP=$1
 #   Fuzzing_file="$output_path/ffuf-Subdomains.log"
#    if $IP ~= ([a-zA-Z]*)\.([a-zA-Z]{2,};then
#        ffuf -u http://$IP -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -H "Host: FUZZ.$IP" -mc 200-299,300-310 
#
#}































# Functions for Enumerating
banner
Dirsearch $IP &
Fuzzing_Domains  $IP &
Full-portScan $IP && echo -e "${Green}[+]${Nc} Dirsearch Result" && line && cat $dirsearch_file && line && echo -e "${Green}[+]${Nc} Fuzzing_Domains Result" && line && cat $ffuf-file && line