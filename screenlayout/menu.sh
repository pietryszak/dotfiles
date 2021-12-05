#!/usr/bin/env bash


### Color Functions ##
red=`tput setaf 1`
green=`tput setaf 2`
bold=`tput bold`
reset=`tput sgr0`


### Main Function ###

mainmenu() {
    echo -ne "
MONITORS MENU:

1) Monitors ${green}${bold}Horizontal${reset}
2) Benq ${green}${bold}Vertical${reset}
3) Only ${green}${bold}Dell${reset} turn on
4) Only ${green}${bold}Benq${reset} turn on
${red}${bold}0/q) Exit${reset}

Choose an option:  "
    read -r ans
    case $ans in
    1)
	sh ~/.screenlayout/horizontal.sh --cuts
        echo "${green}${bold}2 Monitors now is horizontal${reset}"
	;;
    2)
	sh ~/.screenlayout/vertical.sh --cuts
        echo "${green}${bold}Benq now is vertical${reset}"
	;;
    3)
	sh ~/.screenlayout/one-monitor-dell.sh --cuts      
	echo "${green}${bold}Only Dell is turned on now${reset}"
	;;
    4)
	sh ~/.screenlayout/one-monitor-benq.sh --cuts   
	echo "${green}${bold}Only Benq is turned on now${reset}"
	;;
	
    0)
	echo "${green}${bold}Bye bye.${reset}"
	exit 0
        ;;
    q)
        echo "${green}${bold}Bye bye.${reset}"
        exit 0
        ;;
	
    *)
        echo "${red}${bold}Wrong option.${reset}"
        exit 1
        ;;
    esac
}

mainmenu
