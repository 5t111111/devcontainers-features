#!/usr/bin/env bash

set -e

# Install Cargo B(inary)Install
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# Install Cargo binaries
cargo binstall cargo-audit --locked -y
cargo binstall cargo-edit --locked -y
cargo binstall cargo-expand --locked -y
cargo binstall cargo-watch --locked -y
