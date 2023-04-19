#!/bin/zsh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
CYAN="\033[36m"

function doneBanner() {
 echo "${BOLD}${CYAN}     ____  ____  _   ________    ${RESET}"
 echo "${BOLD}${CYAN}    / __ \/ __ \/ | / / ____/    ${RESET}"
 echo "${BOLD}${CYAN}   / / / / / / /  |/ / __/       ${RESET}"
 echo "${BOLD}${CYAN}  / /_/ / /_/ / /|  / /___       ${RESET}"
 echo "${BOLD}${CYAN} /_____/\____/_/ |_/_____/       ${RESET}"
}

doneBanner