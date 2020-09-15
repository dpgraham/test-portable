#!/bin/bash

# Move files over to ./bundles/bundle-macos
mkdir -p ./bundles/bundle-macos/
mkdir -p ./bundles/bundle-macos/
cp -r ./files/macos/. ./bundles/bundle-macos/
cp -r ./files/install.sh ./bundles/bundle-macos/install.sh
cp -r ./files/test-all.sh ./bundles/bundle-macos/test-all.sh

# Install dependencies
pushd ./bundles/bundle-macos/
mkdir -p ./
cp $(which node) ./node
cp ./package.json ./package.json
npm config set cache $PWD/__cache/npm/
bash ./install.sh
rm -rf ./install.sh
popd