#!/bin/bash

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
cd hello
dotnet add package Wasi.Sdk --prerelease
dotnet add package Wasi.AspNetCore.Server.Native --prerelease
