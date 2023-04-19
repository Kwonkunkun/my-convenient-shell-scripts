#!/bin/zsh

# script dir
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

function main() {

  # husky set
  chmod +x "$SCRIPT_DIR/scripts/set-husky.sh" && "$SCRIPT_DIR/scripts/set-husky.sh"

  # commitizen set
  chmod +x "$SCRIPT_DIR/scripts/set-commitizen.sh" && "$SCRIPT_DIR/scripts/set-commitizen.sh"

  # commit convention set
  chmod +x "$SCRIPT_DIR/scripts/set-commit-convention.sh" && "$SCRIPT_DIR/scripts/set-commit-convention.sh"

  # release-it set
  chmod +x "$SCRIPT_DIR/scripts/set-release-it.sh" && "$SCRIPT_DIR/scripts/set-release-it.sh"
}


main
