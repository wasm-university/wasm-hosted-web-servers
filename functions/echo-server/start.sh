#!/bin/bash
#wasmtime --invoke _start target/wasm32-wasi/debug/tada.wasm --tcplisten localhost:8080

export WASMTIME_BACKTRACE_DETAILS=1
wasmtime --invoke _start target/wasm32-wasi/debug/echo-server.wasm --tcplisten localhost:4000
