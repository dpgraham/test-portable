#!/bin/bash

# Move files over to ./bundles/bundle-macos
mkdir -p ./bundles/bundle-macos/
mkdir -p ./bundles/bundle-macos/__sauce/
cp -r ./files/macos/. ./bundles/bundle-macos/__sauce/

# Install dependencies
pushd ./bundles/bundle-macos/
mkdir -p ./__sauce/
cp $(which node) ./__sauce/node
cp ./__sauce/package.json ./package.json
npm config set cache $PWD/__sauce/__cache/npm/
npm install
rm -rf ./package.json
rm -rf ./package-lock.json
popd