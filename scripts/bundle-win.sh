#!/bin/bash
mkdir -p ./bundles/bundle-win
cp package-win.json ./bundles/bundle-win/package.json
cp $(which node) ./bundles/bundle-win/node
pushd ./bundles/bundle-win/
npm install yarn
CYPRESS_CACHE_FOLDER=$PWD/__cypress_cache_folder ./node_modules/.bin/yarn
popd