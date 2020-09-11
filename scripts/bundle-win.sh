#!/bin/bash

# Move files over to ./bundles/bundle-win
mkdir -p ./bundles/bundle-win/
cp -r ./files/win/package.json ./bundles/bundle-win/package.json # TODO: Make this copy whole dir

# Install dependencies
pushd ./bundles/bundle-win/
ls -lah ./
mkdir -p ./__sauce/
mkdir -p ./__sauce/__cache/Cypress/
mkdir -p ./__sauce/__cache/npm/
cp $(which node) ./bundles/bundle-win/__sauce/node
npm config set cache $PWD/__sauce/__cache/npm/
export CYPRESS_CACHE_FOLDER=$PWD/__sauce/__cache/Cypress/
npm install
mv package.json 
popd