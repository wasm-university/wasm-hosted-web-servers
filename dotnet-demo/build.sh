#!/bin/bash

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
cd hello
dotnet build

ls -lh bin/Debug/net7.0/*.wasm


