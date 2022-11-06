#!/bin/bash

cd hello
wasmtime bin/Debug/net7.0/hello.wasm --tcplisten localhost:8080



