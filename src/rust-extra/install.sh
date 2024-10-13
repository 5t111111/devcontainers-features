#!/usr/bin/env bash

set -e

# Install Cargo B(inary)Install
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# Install Cargo binaries
cargo binstall cargo-audit --locked
cargo binstall cargo-edi --locked
cargo binstall cargo-expan --locked
cargo binstall cargo-watc --locked
