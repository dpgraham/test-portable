#!/bin/bash

# Move files over to ./bundles/bundle-win
mkdir -p ./bundles/bundle-win/
mkdir -p ./bundles/bundle-win/
cp -r ./files/win/. ./bundles/bundle-win/
cp -r ./files/install.sh ./bundles/bundle-win/install.sh
cp -r ./files/test-all.sh ./bundles/bundle-win/test-all.sh

# Install dependencies
pushd ./bundles/bundle-win/
mkdir -p ./
mkdir -p ./__cache/Cypress/
cp $(which node) ./node
npm config set cache $PWD/__cache/npm/
export CYPRESS_CACHE_FOLDER=$PWD/__cache/Cypress/
bash ./install.sh
rm -rf ./install.sh
popd