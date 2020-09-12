echo "Printing Node version"
../__sauce/node --version

echo "Cypress cache location: $CYPRESS_CACHE_FOLDER"
node ./tests/cypress/verify-cypress.js

node ./tests/testcafe/run-test-cafe-tests.js