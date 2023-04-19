#!/bin/zsh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
CYAN="\033[36m"

# script dir
SCRIPTS_DIR=$(cd "$(dirname "$0")" && pwd)/../scripts

function main() {
  banner

  # husky set
  chmod +x "$SCRIPTS_DIR/set-husky.sh" && "$SCRIPTS_DIR/set-husky.sh"

  # commitizen set
  chmod +x "$SCRIPTS_DIR/set-commitizen.sh" && "$SCRIPTS_DIR/set-commitizen.sh"

  # commit convention set
  chmod +x "$SCRIPTS_DIR/set-commit-convention.sh" && "$SCRIPTS_DIR/set-commit-convention.sh"

  # release-it set
  chmod +x "$SCRIPTS_DIR/set-release-it.sh" && "$SCRIPTS_DIR/set-release-it.sh"

  doneBanner
}

function banner() {
 echo "${BOLD}${CYAN}       ______      ______ _                         _       __        ${RESET}"
 echo "${BOLD}${CYAN}      / / __ \    / / __ ( )_____   _______________(_)___  / /______  ${RESET}"
 echo "${BOLD}${CYAN} __  / / / / /_  / / / / /// ___/  / ___/ ___/ ___/ / __ \/ __/ ___/  ${RESET}"
 echo "${BOLD}${CYAN}/ /_/ / /_/ / /_/ / /_/ / (__  )  (__  ) /__/ /  / / /_/ / /_(__  )   ${RESET}"
 echo "${BOLD}${CYAN}\____/\____/\____/\____/ /____/  /____/\___/_/  /_/ .___/\__/____/    ${RESET}"
 echo "${BOLD}${CYAN}                                                 /_/                  ${RESET}"
}

function doneBanner() {
 echo "${BOLD}${CYAN}     ____  ____  _   ________    ${RESET}"
 echo "${BOLD}${CYAN}    / __ \/ __ \/ | / / ____/    ${RESET}"
 echo "${BOLD}${CYAN}   / / / / / / /  |/ / __/       ${RESET}"
 echo "${BOLD}${CYAN}  / /_/ / /_/ / /|  / /___       ${RESET}"
 echo "${BOLD}${CYAN} /_____/\____/_/ |_/_____/       ${RESET}"
}


main
