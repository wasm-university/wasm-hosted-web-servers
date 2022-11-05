#!/bin/bash
tinygo build -o main.wasm -target wasi ./main.go

ls -lh *.wasm
