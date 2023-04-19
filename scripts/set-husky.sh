#!/bin/zsh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
YELLOW="\033[33m"

# husky set
echo "${BOLD}${YELLOW}Starting script...${RESET}${YELLOW} husky${RESET}"
npm i -D husky
npm pkg set scripts.prepare="husky install"
npm run prepare