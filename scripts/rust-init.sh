#!/usr/bin/env bash
sudo apt update
sudo apt install -y git clang curl libssl-dev llvm libudev-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup default stable
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup show
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
