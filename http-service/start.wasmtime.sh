#!/bin/bash
wasmtime target/wasm32-wasi/debug/http-service.wasm --tcplisten localhost:8080
