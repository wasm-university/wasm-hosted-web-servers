# Demo Wasi & ASP.Net

## Initiate the project

```bash
dotnet new web -o hello

cd hello
dotnet add package Wasi.Sdk --prerelease
dotnet add package Wasi.AspNetCore.Server.Native --prerelease
```

## Update source code

```csharp
using System.Runtime.InteropServices;

var builder = WebApplication.CreateBuilder(args).UseWasiConnectionListener();

var app = builder.Build();

app.MapGet("/", () => {
  return $"👋 Hello, World! 🌍 🖥️: {RuntimeInformation.OSArchitecture} ⏳: {DateTime.UtcNow.ToLongTimeString()} (UTC)";
});

app.Run();
```

## Build & Run

```bash
cd hello
dotnet build
gp url 8080
wasmtime bin/Debug/net7.0/hello.wasm --tcplisten localhost:8080
```

