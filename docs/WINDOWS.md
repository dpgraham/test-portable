# Test Portable Windows
Instructions on how to install and run test portable from a Windows machine

## Setup

### Pre-requisites
* `npm` (`node` is pre-bundled with test-portable)

### Installation
* Download the latest bundle from GitHub Releases: https://github.com/dpgraham/test-portable/releases
* Unzip the bundle to your desired directory

### TestCafe
* Requires browsers to be installed on the operating system

### Test
* To test that the environment can run the test bundles, run `npm test` from the bundle directory

## Usage Examples
These usage examples all assume the working directory is wherever you extracted the bundle.

(And the examples are all in bash, sorry)

### Cypress

```bash
# Run a test on Cypress version 5.1.0
./node_modules/cypress--v5.1.0/bin/cypress run /path/to/cypress-tests/
```

### Run a TestCafe Test
```bash
# Run a TestCafe test on version 1.9.2
./node_modules/testcafe--v1.9.2/bin/testcafe-with-v8-flag-filter.js <test-cafe args>
```