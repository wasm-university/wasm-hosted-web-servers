#!/bin/bash
#wasmtime --invoke _start target/wasm32-wasi/debug/tada.wasm --tcplisten localhost:8080

wasmtime run --tcplisten localhost:4000 --dir=public target/wasm32-wasi/debug/file-server.wasm
