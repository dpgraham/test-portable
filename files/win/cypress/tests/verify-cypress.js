const dependencies = require('../package.json').dependencies;
const exec = require('child_process').exec;
const promisify = require('bluebird').promisify;
const path = require('path');

// Runs `cypress verify` on all installed Cypresses
async function main () {
    for (const dependencyName of Object.keys(dependencies)) {
        if (dependencyName.startsWith('cypress--')) {
            console.log('Verifying ' + dependencyName);
            await promisify(exec)(`${path.join(__dirname, '..', '..', 'cypress', 'node_modules', dependencyName, 'bin', 'cypress')} verify`);
            console.log('Successfully verified ' + dependencyName);
        }
    }
}

(async () => {
    try {
        console.log('\n=======VERIFYING CYPRESS INSTALLATIONS===========');
        await main();
        console.log('=======DONE VERIFYING CYPRESS INSTALLATIONS=======');
    } catch (e) {
        console.error(e);
        console.error('=======FAILED VERIFYING CYPRESS INSTALLATIONS=====');
        process.exit(1);
    }
})();