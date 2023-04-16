#!/bin/sh

# ANSI escape
RESET="\033[0m"
BOLD="\033[1m"
BLUE="\033[34m"

# release-it set
echo "${BOLD}${BLUE}Starting script...${RESET}${BLUE} release-it${RESET}"
npm i -D release-it @release-it/conventional-changelog
cat > .release-it.json <<EOL
{
  "git": {
    "commitMessage": "chore: release v\${version}",
    "tagName": "v\${version}"
  },
  "github": {
    "release": true
  },
  "npm": {
    "publish": true
  },
  "plugins": {
    "@release-it/conventional-changelog": {
      "infile": "CHANGELOG.md",
      "preset": {
        "name": "conventionalcommits",
        "types": [
          {
            "type": "feat",
            "section": "Features"
          },
          {
            "type": "fix",
            "section": "Bug Fixes"
          },
          {}
        ]
      }
    }
  }
}
EOL
npm pkg set scripts.release="release-it"
