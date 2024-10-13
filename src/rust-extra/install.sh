#!/usr/bin/env bash

set -e

# Install Cargo B(inary)Install
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# Install Cargo binaries
cargo binstall cargo-audit --force --locked
cargo binstall cargo-edit --force --locked
cargo binstall cargo-expand --force --locked
cargo binstall cargo-watch --force --locked
