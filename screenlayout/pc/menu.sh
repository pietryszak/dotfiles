#!/bin/bash

### Color Functions ##
red=`tput setaf 1`
bold=`tput bold`
reset=`tput sgr0`

PS3='Please enter your choice: '
options=("Monitors Horizontal" "Benq Vertical" "Only Dell turn on" "Only Benq turn on" "Vmware screen" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Monitors Horizontal") 
		nohup  ~/.screenlayout/horizontal.sh &>/dev/null & ;;
        "Benq Vertical")
        nohup  ~/.screenlayout/vertical.sh &>/dev/null & ;;
   	    "Only Dell turn on")
	    nohup  ~/.screenlayout/one-monitor-dell.sh &>/dev/null & ;;
     	"Only Benq turn on")
	    nohup  ~/.screenlayout/one-monitor-benq.sh &>/dev/null & ;;
        "Vmware screen")
	    nohup  ~/.screenlayout/vmware.sh &>/dev/null & ;;    
        "Quit")
            break
            ;;
        *) echo "${red}${bold}Invalid option $REPLY${reset}";;
    esac
done
