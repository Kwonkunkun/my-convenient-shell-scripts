#!/bin/zsh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
CYAN="\033[36m"

# commitizen set
echo "${BOLD}${CYAN}Starting script...${RESET}${CYAN} commitizen${RESET}"
npm i -D commitizen cz-conventional-changelog
npm pkg set config.commitizen.path="./node_modules/cz-conventional-changelog"
npx husky add ./.husky/prepare-commit-msg 'exec < /dev/tty && node_modules/.bin/cz --hook || true'