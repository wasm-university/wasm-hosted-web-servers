#!/bin/bash

docker buildx build --platform wasi/wasm32 -t aspdotnetservice .

docker images | grep aspdotnetservice


