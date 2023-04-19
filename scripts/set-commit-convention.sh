#!/bin/zsh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
GREEN="\033[32m"

# commit convention set
echo "${BOLD}${GREEN}Starting script...${RESET}${GREEN} commitlint${RESET}"
npm i -D @commitlint/cli @commitlint/config-conventional
echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js
npx husky add .husky/commit-msg 'npx --no-install commitlint --edit "$1"'