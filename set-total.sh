#!/bin/sh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
CYAN="\033[36m"

function main() {
  # banner
  banner

  # husky set
  chmod +x ./scripts/set-husky.sh && ./scripts/set-husky.sh

  # commitizen set
  chmod +x ./scripts/set-commitizen.sh && ./scripts/set-commitizen.sh

  # commit convention set
  chmod +x ./scripts/set-commit-convention.sh && ./scripts/set-commit-convention.sh

  # release-it set
  chmod +x ./scripts/set-release-it.sh && ./scripts/set-release-it.sh

  # done banner
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
