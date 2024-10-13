#!/usr/bin/env bash

set -e

cargo install cargo-binstall --locked

cargo binstall cargo-audit --locked
cargo binstall cargo-edi --locked
cargo binstall cargo-expan --locked
cargo binstall cargo-watc --locked
