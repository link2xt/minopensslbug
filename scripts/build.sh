#!/bin/sh
python3 -m venv venv
. venv/bin/activate
pip install ziglang
rustup target add x86_64-unknown-linux-musl
CC="$PWD/scripts/zig-cc" \
TARGET_CC="$PWD/scripts/zig-cc" \
CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_LINKER="$PWD/scripts/zig-cc" \
LD="$PWD/scripts/zig-cc" \
ZIG_TARGET="x86_64-linux-musl" \
cargo build --target x86_64-unknown-linux-musl
