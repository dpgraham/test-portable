# Test Portable Windows
Instructions on how to install and run test portable from a Windows machine

## Setup

### Installation
* Download the latest bundle from GitHub Releases: https://github.com/dpgraham/test-portable/releases
* Unzip the bundle to your desired directory

### Cypress Setup
* Using Cypress that `CYPRESS_CACHE_FOLDER` is set to `./__cache/Cypress`

## Pre-requisites
* `npm` (`node` is pre-bundled)

### TestCafe
* Requires browsers to be installed on the operating system

## Usage Examples
These usage examples assumes the working directory is the root of the bundle

(And the examples are all in bash, sorry)

### Cypress
```bash
# Verify Cypress 5.1.0 can run
export CYPRESS_CACHE_FOLDER=./__cache/Cypress
export CYPRESS_VERSION=v5.1.0
./cypress/node_modules/cypress--$CYPRESS_VERSION/bin/cypress verify
```

```bash
# Run a test on Cypress version 5.1.0
export CYPRESS_CACHE_FOLDER=./__cache/Cypress
export CYPRESS_VERSION=v5.1.0
./cypress/node_modules/cypress--$CYPRESS_VERSION/bin/cypress run /path/to/cypress-tests/
```

### TestCafe

### Puppeteer

### Playwright
