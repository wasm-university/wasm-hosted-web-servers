#!/bin/bash
cargo build --target wasm32-wasi

# cargo build --target wasm32-wasi --release
ls -lh target/wasm32-wasi/debug/*.wasm
