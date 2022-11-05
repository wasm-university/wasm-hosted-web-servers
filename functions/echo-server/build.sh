#!/bin/bash
RUSTFLAGS="--cfg tokio_unstable" cargo build --target wasm32-wasi
