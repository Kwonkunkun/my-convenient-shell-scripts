#!/bin/zsh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
CYAN="\033[36m"

function banner() {
 echo "${BOLD}${CYAN}       ______      ______ _                         _       __        ${RESET}"
 echo "${BOLD}${CYAN}      / / __ \    / / __ ( )_____   _______________(_)___  / /______  ${RESET}"
 echo "${BOLD}${CYAN} __  / / / / /_  / / / / /// ___/  / ___/ ___/ ___/ / __ \/ __/ ___/  ${RESET}"
 echo "${BOLD}${CYAN}/ /_/ / /_/ / /_/ / /_/ / (__  )  (__  ) /__/ /  / / /_/ / /_(__  )   ${RESET}"
 echo "${BOLD}${CYAN}\____/\____/\____/\____/ /____/  /____/\___/_/  /_/ .___/\__/____/    ${RESET}"
 echo "${BOLD}${CYAN}                                                 /_/                  ${RESET}"
}

banner