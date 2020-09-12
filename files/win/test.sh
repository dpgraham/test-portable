# Validate Node
echo "Printing Node version"
../__sauce/node --version

# Cypress Tests
echo "Cypress cache location: $CYPRESS_CACHE_FOLDER"
../__sauce/node ./tests/cypress/verify-cypress.js

## TestCafe Tests 
## NOTE: These tests aren't running on 
../__sauce/node ./tests/testcafe/run-test-cafe-tests.js