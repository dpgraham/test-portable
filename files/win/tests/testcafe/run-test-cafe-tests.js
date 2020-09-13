const dependencies = require('../../package.json').dependencies;
const exec = require('child_process').exec;
const promisify = require('bluebird').promisify;
const path = require('path');

// Runs `cypress verify` on all installed Cypresses
async function main () {
    for (const dependencyName of Object.keys(dependencies)) {
        if (dependencyName.startsWith('testcafe--')) {
            console.log('Verifying ' + dependencyName);
            await promisify(exec)(`${path.join(__dirname, '..', '..', '..', 'node_modules', dependencyName, 'bin', 'testcafe-with-v8-flag-filter.js')} chrome ./tests/testcafe/test.js`);
            console.log('Successfully verified ' + dependencyName);
        }
    }
}

(async () => {
    try {
        console.log('\n=======VERIFYING TESTCAFE INSTALLATIONS===========');
        await main();
        console.log('=======DONE VERIFYING TESTCAFE INSTALLATIONS=======');
    } catch (e) {
        console.error(e);
        console.error('=======FAILED VERIFYING TESTCAFE INSTALLATIONS=====');
        process.exit(1);
    }
})();