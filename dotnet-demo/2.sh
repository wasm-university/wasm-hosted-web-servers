#!/bin/bash

cd hello
dotnet build

ls -lh bin/Debug/net7.0/*.wasm
