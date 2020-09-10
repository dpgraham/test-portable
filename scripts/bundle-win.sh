#!/bin/bash
mkdir -p ./bundles/bundle-win
cp package-win.json ./bundles/bundle-win/package.json
cp $(which yarn) ./bundles/bundle-win/yarn
cp $(which node) ./bundles/bundle-win/node
pushd ./bundles/bundle-win/
CYPRESS_CACHE_FOLDER=$PWD/__cypress_cache_folder ./yarn
popd