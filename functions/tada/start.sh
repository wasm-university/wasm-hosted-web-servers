#!/bin/bash
#wasmtime --invoke _start target/wasm32-wasi/debug/tada.wasm --tcplisten localhost:8080

wasmtime run  --tcplisten localhost:8080 target/wasm32-wasi/debug/tada.wasm
