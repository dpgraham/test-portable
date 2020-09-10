#!/bin/bash

# Move files over to ./bundles/bundle-win
mkdir -p ./bundles/bundle-win
cp -r ./files/win/package.json ./bundles/bundle-win/package.json # TODO: Make this copy whole dir
cp $(which node) ./bundles/bundle-win/node
cp $(which npm) ./bundles/bundle-win/npm

# Install dependencies
pushd ./bundles/bundle-win/
ls -lah ./
CYPRESS_CACHE_FOLDER=$PWD/__cypress_cache_folder npm install
popd