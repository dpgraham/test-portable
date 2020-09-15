#!/bin/bash

# Move files over to ./bundles/bundle-macos
mkdir -p ./bundles/bundle-macos/
mkdir -p ./bundles/bundle-macos/
cp -r ./files/macos/. ./bundles/bundle-macos/

# Install dependencies
pushd ./bundles/bundle-macos/
mkdir -p ./
cp $(which node) ./node
cp ./package.json ./package.json
npm config set cache $PWD/__cache/npm/
npm install
rm -rf ./package.json
rm -rf ./package-lock.json
popd