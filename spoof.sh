#/bin/bash

#Variables

default="\e[39m"
yellow="\e[33m"
red="\e[31m"
green='\033[0;32m'
blink="\e[5m"
stopblink="\e[25m"
lightpurple="\e[95m"
lightcyan="\e[96m"
lightyellow="\e[93m"
lightgreen="\e[92m"
bold="\e[1m"
blue="\e[34m"

#Dependency check

curl=/usr/bin/curl
toilet=/usr/bin/toilet
a=y

#Curl
echo ""
echo -e "${lightyellow}[+] Checking your installation , Please wait . . ."
echo ""
echo -e "${lightyellow}[+] Checking curl . . ."
if test -f "$curl"; then
	echo ""
    echo -e "${lightgreen}[+] Curl is already installed (✓)"
clear
    echo ""
  else
  	echo ""
  echo -e "${red}[-]error! Curl is not installed.(x)"
  echo -e "${lightyellow}"
read -p "[?] Do you want to install curl ? (y/n) "option
if [[ $option == $a ]]
 then
 	echo ""
echo -e "${green}[+] Installing curl, Please wait . . . "
sudo apt-get install curl -y
echo ""
echo -e "${lightgreen}[+] Successfully Installed curl"
clear
echo ""
else
	 echo ""
	 echo -e "${red}[-] error, curl is required , exiting . . ."
 exit
fi
fi


#Banner

echo -e "${bold}               Let's fake it ${blink};)${stopblink}"
echo -e "${yellow}"
echo "    .,,,,''''''''''........'''''''''',,,,. "
echo "   .llllccccccc::::::::::::::::cccccccllll."
echo "   .ll:..;cccccc::::::::::::::cccccc;..:ll."
echo "   .oll,  .,cccccccccccccccccccccc,.  ,lll."
echo "   .ollll,   ,cccccccccccccccccc,   ,llllo."
echo "   .oooolll;.  ,clllllcclllllc,  .;llloooo."
echo "   .ooooooool:.  ,clllllllll,  .:loooooooo."
echo "   .ddooooooo:...  'cooooc'  ...:ooooooodd."
echo "   .ddddddo:..;ooc.  'll'  .coo;..:odddddd."
echo "   .xdddd:..;odddddl'    'ldddddo;..:ddddx."
echo "   .xxxxc.cddddddddddo,,oddddddddddc.cxxxx."
echo "   .xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx."
echo "    .;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;."
echo ""
echo -e "${lightcyan}                                       -> coded by Mr. Odball"

#Main Function

echo ""
echo -e "${lightpurple}Note :- You can send only one sms to a specific no. in every 24 hrs."
echo ""
echo -e "${lightgreen}[+] Please, enter the Phone no. of your recipent with country code (+)"
echo ""
read -p ">> " phone 
echo ""
echo -e "${lightyellow}[+] Now enter your message e.g. -> [hello world]"
echo ""
read -p ">> " message
echo ""
echo -e "${green}[+] Let me do the rest . . ."
echo ""

#Output

curl -X POST https://textbelt.com/text \
       --data-urlencode phone=$phone \
       --data-urlencode message="$message" \
       -d key=textbelt
echo -e "${default}"

#Don't copy my code withouth giving credits , Thanks :D
