# my-convenient-shell-scripts

<img width="683" alt="image" src="https://user-images.githubusercontent.com/59603575/232329545-f84826da-e30c-4d9a-9072-aa92505f7bae.png">

This script sets up several Git hooks and packages in order to enforce a standardized commit message format and streamline the release process.

## Constraints

git init must be done before running this script

npm version 7 or higher (because of the 'npm pkg' command)

## Installation

```shell
npm i kwonkunkun-convenient-script
```

## Usage

```shell
set-kwon-env
```

## Features

### Husky

[Husky](https://github.com/typicode/husky) is a tool that allows you to easily set up Git hooks. This script uses it to set up a `prepare` script that installs Husky and an appropriate configuration file.

### Commitlint

[Commitlint](https://github.com/conventional-changelog/commitlint) is a tool that checks whether a commit message meets a specified format. This script uses it to enforce the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format.

### Commitizen

[Commitizen](https://github.com/commitizen/cz-cli) is a tool that provides a command-line interface for generating commit messages that meet a specified format. This script uses it to prompt the user for the necessary information to generate a commit message.

### Release-it

[Release-it](https://github.com/release-it/release-it) is a tool that simplifies the process of creating a new release of your project. This script uses it to automatically generate a changelog, create a Git tag, and publish a new version of your package to NPM. It is configured to use the Conventional Commits format.

## License

This script is licensed under the [MIT License](https://github.com/joshtronic/bash_profile/blob/master/LICENSE.md).
