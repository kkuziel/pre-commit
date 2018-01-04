#!/usr/bin/env node
console.log('\x1b[1m','Please wait for tests to run...','\x1b[0m');
console.log('You can','\x1b[1m','skip','\x1b[0m','the precommit hook by running "git commit -n" instead','\x1b[1m', "but beware!",'\x1b[0m');

require('child_process').exec(
  'npm run test',
  function (error, stdout) {
    console.log(stdout && 'stdout: ' + stdout);
    if (error !== null) {
      console.log(error);
      process.abort(0);
    }
  }
);