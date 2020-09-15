# CONTRIBUTING
Guide to developing and contributing to test-portable

## Pre-requisites
Requires NodeJS/NPM installed on local machine

## Setup
```
npm install
```

## Building Bundles
Instructions on how to build bundles. Each bundle targets a different platform (`bundle-win`, `bundle-macos`, `bundle-linux`).

For testing/development purposes you can build bundles across platforms (e.g.: a Windows bundle can be built on a macOS)

### Instructions
```
bash ./scripts/bundle-{platform}.sh
```

### What this does
* Copies all the files in `/files/{platform}/` over to `/bundles/bundle-{platform}/`
* Copies `package.json` to `/bundles/bundle-{platform}/` and run `npm install` to get the dependencies in `node_modules`
* Copies `node` binary to `/bundles/bundle-{platform}/` so that users of the bundle have access to the same `node` binary that was used to build the bundle in the first place

### Run smoke tests
To run smoke tests on a bundle:

```
cd /bundles/bundle-{platform}/
npm test
```

## Adding a dependency
* To add a dependency to a bundle, edit `files/{platform}/package.json`
* Add a dependency of the form `"<dependency-name>--v<version>": "npm:<dependency-name>@<version>"`

### Example
To install TestCafe v1.9.1 on `win` bundle

* In `/files/win/package.json`, add a dependency `"testcafe--v1.9.1": "npm:testcafe@1.9.1"`
* Run `bash ./scripts/bundle-win.sh`
* Open `./bundles/bundle-win/` and run `npm test`
