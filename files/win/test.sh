echo "Printing Node version"
../__sauce/node --version

echo "Run Cypress verify"
echo "Cypress cache $CYPRESS_CACHE_FOLDER"
../node_modules/cypress--v5.1.0/bin/cypress verify