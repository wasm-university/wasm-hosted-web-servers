#!/bin/bash

cd hello
dotnet build --configuration Release

ls -lh bin/Release/net7.0/*.wasm
