#!/usr/bin/env bash
#
#  remove-apps.sh - Remove some Ubuntu default apps
#
#  Author:  Diovani Dal'Moro
#  License: Mozilla Public License 2.0
#
#------------------------------------------------------------------------
#
#  This script will remove the following ubuntu apps:
#
#    Aisleriot
#    Amazon
#    Backups
#    Calendar
#    Characters
#    Cheese
#    Disks
#    Disk Usage Analyzer
#    Mahjongg
#    Mines
#    Passwords
#    Power statistics
#    Remmina
#    Rhythmbox
#    Shotwell
#    Sudoku
#    Thunderbird
#    To Do
#    Transmission
#    Usb creator
#
#    Press Y to confirm, or any other key to cancel
#
#
#  Examples:
#
#    $ ./remove-apps.sh
#      Remove the apps listed above
#
#------------------------------------------------------------------------
#
#  Tested on:
#    bash 
#
#------------------------------------------------------------------------

blue="\e[34;1m"
cyan="\e[36;1m"
green="\e[32;1m"
light_blue="\e[94;1m"
light_green="\e[92;1m"
light_magenta="\e[95;1m"
light_red="\e[91;1m"
magenta="\e[35;1m"
red="\e[31;1m"
white="\e[97;1m"
yellow="\e[33;1m"
clear="\e[0m"

#livepatch

warning_message="${yellow}The following apps will be removed${white}:

Aisleriot
Amazon
Backups
Calendar
Characters
Cheese
Disks
Disk Usage Analyzer
Mahjongg
Mines
Passwords
Power statistics
Remmina
Rhythmbox
Shotwell
Sudoku
Thunderbird
To Do
Transmission
Usb creator

Press ${light_green}Y${white} to ${green}confirm${white}, or ${light_red}any other key${white} to ${red}cancel${clear}"

sudo clear

removeAisleriot() {
  if [ -n "$( which aisleriot )" ]; then
    echo -e "${white}Removing ${light_red}Aisleriot${white}...${clear}"
    sudo apt remove aisleriot -y &>/dev/null
  fi
}

removeAmazon() {
  local amazon_app_path=/usr/share/applications/ubuntu-amazon-default.desktop

  if [ -f $amazon_app_path ]; then
    echo -e "${white}Removing ${light_blue}Amazon${white}...${clear}"
    sudo rm -rf $amazon_app_path
  fi
}

removeBackups() {
  if [ -n "$( which deja-dup )" ]; then
    echo -e "${white}Removing ${gray}Backups${white}...${clear}"
    sudo apt remove deja-dup -y &>/dev/null
  fi
}

removeCalendar() {
  if [ -n "$( which gnome-calendar )" ]; then
    echo -e "${white}Removing ${yellow}Calendar${white}...${clear}"
    sudo apt remove gnome-calendar -y &>/dev/null
  fi
}

removeCharacters() {
  if [ -n "$( which gnome-characters )" ]; then
    echo -e "${white}Removing ${yellow}Characters${white}...${clear}"
    sudo apt remove gnome-characters -y &>/dev/null
  fi
}

removeCheese() {
  if [ -n "$( which cheese )" ]; then
    echo -e "${white}Removing ${light_magenta}Chesse${white}...${clear}"
    sudo apt remove cheese -y &>/dev/null
  fi
}

removeDisks() {
  if [ -n "$( which gnome-disks )" ]; then
    echo -e "${white}Removing ${light_magenta}Disks${white}...${clear}"
    sudo apt remove gnome-disks -y &>/dev/null
  fi
}

removeDiskUsageAnalyzer() {
  if [ -n "$( which baobab )" ]; then
    echo -e "${white}Removing ${light_magenta}Disk Usage Analyzer${white}...${clear}"
    sudo apt remove baobab -y &>/dev/null
  fi
}

removeMahjongg() {
  if [ -n "$( which gnome-mahjongg )" ]; then
    echo -e "${white}Removing ${light_blue}Mahjongg${white}...${clear}"
    sudo apt remove gnome-mahjongg -y &>/dev/null
  fi
}

removeMines() {
  if [ -n "$( which gnome-mines )" ]; then
    echo -e "${white}Removing ${gray}Mines${white}...${clear}"
    sudo apt remove gnome-mines -y &>/dev/null
  fi
}

removePasswords() {
  if [ -n "$( which seahorse )" ]; then 
    echo -e "${white}Removing ${gray}Passwords${white}...${clear}"
    sudo apt remove seahorse -y &>/dev/null
  fi
}

removePowerStatistics() {
  if [ -n "$( which gnome-power-statistics )" ]; then 
    echo -e "${white}Removing ${cyan}Power Statistics${white}...${clear}"
    sudo apt remove gnome-power-statistics -y &>/dev/null
  fi
}

removeRemmina() {
  if [ -n "$( which remmina )" ]; then
    echo -e "${white}Removing ${light_green}Remmina${white}...${clear}"
    sudo apt remove remmina -y &>/dev/null
  fi
}

removeRhythmbox() {
  if [ -n "$( which rhythmbox )" ]; then
    echo -e "${white}Removing ${yellow}Rhythmbox${white}...${clear}"
    sudo apt remove rhythmbox -y &>/dev/null
  fi
}

removeScan() {
  if [ -n "$( which simple-scan )" ]; then
    echo -e "${white}Removing ${red}Scan${white}...${clear}"
    sudo apt remove simple-scan -y &>/dev/null
  fi
}

removeShotwell() {
  if [ -n "$( which shotwell )" ]; then
    echo -e "${white}Removing ${magenta}Shotwell${white}...${clear}"
    sudo apt remove shotwell -y &>/dev/null
  fi
}

removeSudoku() {
  if [ -n "$( which gnome-sudoku )" ]; then
    echo -e "${white}Removing Sudoku${white}...${clear}"
    sudo apt remove gnome-sudoku -y &>/dev/null
  fi
}

removeThunderbird() {
  if [ -n "$( which thunderbird )" ]; then
    echo -e "${whtie}Removing ${blue}Thunderbird${white}...${clear}"
    sudo apt remove thunderbird -y &>/dev/null
  fi
}

removeToDo() {
  if [ -n "$( which gnome-todo )" ]; then
    echo -e "${white}Removing To Do${white}...${clear}"
    sudo apt remove gnome-todo -y &>/dev/null
  fi
}

removeTransmission() {
  if [ -n "$( which transmission-gtk )" ]; then
    echo -e "${whtie}Removing ${blue}Transmission${white}...${clear}"
    sudo apt remove transmission-gtk -y &>/dev/null
  fi
}

removeUsbCreator() {
  if [ -n "$( which usb-creator-gtk )" ]; then
    echo -e "${white}Removing ${gray}Usb Creator${white}...${clear}"
    sudo apt remove usb-creator-gtk -y &>/dev/null
  fi
}

echo -e "$warning_message"

read -n 1 answer

echo ""

[ "$answer" != "Y" ] && exit 0

removeAisleriot
removeAmazon
removeBackups
removeCalendar
removeCharacters
removeCheese
removeDisks
removeDiskUsageAnalyzer
removeMahjongg
removeMines
removePasswords
removePowerStatistics
removeRemmina
removeRhythmbox
removeShotwell
removeSudoku
removeThunderbird
removeToDo
removeTransmission
removeUsbCreator

sudo apt autoremove -y &>/dev/null

echo -e "${white}\nComplete!${clear}"

