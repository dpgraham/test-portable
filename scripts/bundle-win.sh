#!/bin/bash

# Move files over to ./bundles/bundle-win
mkdir -p ./bundles/bundle-win/
mkdir -p ./bundles/bundle-win/__sauce/
cp -r ./files/win/. ./bundles/bundle-win/__sauce/

# Install dependencies
pushd ./bundles/bundle-win/
mkdir -p ./__sauce/
mkdir -p ./__sauce/__cache/Cypress/
cp $(which node) ./__sauce/node
cp ./__sauce/package.json ./package.json
npm config set cache $PWD/__sauce/__cache/npm/
export CYPRESS_CACHE_FOLDER=$PWD/__sauce/__cache/Cypress/
npm install
rm -rf ./package.json
rm -rf ./package-lock.json
popd