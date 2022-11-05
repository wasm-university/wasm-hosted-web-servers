#!/bin/bash
wasmtime main.wasm --tcplisten localhost:3333
wasmedge main.wasm
