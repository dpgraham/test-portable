# Test Portable
A portable, multi-platform bundle that has test dependencies (Cypress, TestCafe, Appium, etc...) pre-installed.

## Quick Start
```bash
# Install and run Cypress verify
export PLATFORM="win" # Replace with macOS or linux depending on environment
wget github.com/dpgraham/test-portable/latest/bundle-$PLATFORM
unzip bundle-$PLATFORM.zip -d bundle/
cd bundle/
export CYPRESS_VERSION="5.1.0"
./node_modules/cypress--v$CYPRESS_VERSION/bin/cypress verify
```

From more comprehensive usage instructions, see
[Windows doc](/docs/WINDOWS.md)
[macOS doc](/docs/MAC_OS.md)
[Linux doc](/docs/LINUX.md)

## Contributing
See [Contributing Doc](contributing.md)
