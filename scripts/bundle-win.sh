#!/bin/bash

# Move files over to ./bundles/bundle-win
mkdir -p ./bundles/bundle-win
cp -r ./files/win/ ./bundles/bundle-win/
cp $(which node) ./bundles/bundle-win/node

# Install dependencies
pushd ./bundles/bundle-win/
CYPRESS_CACHE_FOLDER=$PWD/__cypress_cache_folder npm install
popd