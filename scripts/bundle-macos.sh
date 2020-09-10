#!/bin/bash
mkdir -p ./bundles/bundle-macos
cp package-macos.json ./bundles/bundle-macos/package.json
cp $(which yarn) ./bundles/bundle-macos/yarn
cp $(which node) ./bundles/bundle-macos/node
pushd ./bundles/bundle-macos/
./yarn
popd