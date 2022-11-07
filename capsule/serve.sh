#!/bin/bash
capsule \
  -wasm=./hello-world/hello-world.wasm \
  -mode=http \
  -httpPort=8080
