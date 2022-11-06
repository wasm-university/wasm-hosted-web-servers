#!/bin/bash
wasmtime target/wasm32-wasi/debug/http-server.wasm --tcplisten localhost:1234
