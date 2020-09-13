# Test Portable
A portable, multi-platform bundle that has test dependencies (Cypress, TestCafe, Appium, etc...) pre-installed.

## Quick Start

### Windows
```bash
# Install and run Cypress verify
wget github.com/dpgraham/test-portable/latest/bundle-win
unzip bundle-win.zip -d bundle/
cd bundle/
export CYPRESS_VERSION="5.1.0" # Configurable
export CYPRESS_CACHE_FOLDER=./__sauce/__cache/Cypress/
./node_modules/cypress--v$CYPRESS_VERSION/bin/cypress verify
```

From more comprehensive usage instructions, see
[Windows doc](/docs/WINDOWS.md)
[macOS doc](/docs/MAC_OS.md)
[Linux doc](/docs/LINUX.md)

## Contributing
See [Contributing Doc](contributing.md)
