#!/usr/bin/env node

import inquirer from 'inquirer';
import {exec} from 'child_process';

const questions = [{
  type: 'confirm', name: 'set-all', message: 'Should you set all module? (default: yes)', default: true,
}];

const subQuestions = [{
  type: 'confirm', name: 'set-husky', message: 'Should you set husky? (default: yes)', default: true,
}, {
  type: 'confirm',
  name: 'set-commit-convention',
  message: 'Should you set commit-convention? (default: yes)',
  default: true,
}, {
  type: 'confirm', name: 'set-commitizen', message: 'Should you set commitizen? (default: yes)', default: true,
}, {
  type: 'confirm', name: 'set-commitlint', message: 'Should you set release-it? (default: yes)', default: true,
}];

inquirer
  .prompt(questions)
  .then((answers) => {
    const runCommand = ['npm run run-banner'];
    if (answers['set-all']) {
      runCommand.push('npm run set-all');

    } else {
      inquirer
        .prompt(subQuestions)
        .then((answers) => {
          if (answers['set-husky']) {
            runCommand.push('npm run set-husky');
          }
          if (answers['set-commit-convention']) {
            runCommand.push('npm run set-commit-convention');
          }
          if (answers['set-commitizen']) {
            runCommand.push('npm run set-commitizen');
          }
          if (answers['set-commitlint']) {
            runCommand.push('npm run set-commitlint');
          }
        })
        .catch((error) => {
          if (error.isTtyError) {
            // Prompt couldn't be rendered in the current environment
          } else {
            // Something else went wrong
          }
        })
    }

    runCommand.push('npm run run-done-banner');

    const childProcess = exec(runCommand.join(' && '));
    childProcess.stdout.on('data', function (data) {
      console.log(data);
    });

    childProcess.stderr.on('data', function (data) {
      console.log(data);
    });
  })
  .catch((error) => {
    if (error.isTtyError) {
      // Prompt couldn't be rendered in the current environment
    } else {
      // Something else went wrong
    }
  });
