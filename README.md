# wasm-rust-microservice


WASI: secure capability based networking

https://blog.jdriven.com/2022/08/wasi-capability-based-networking/

wasmtime run --tcplisten > removed the support https://github.com/bytecodealliance/wasmtime/issues/3936

https://www.arnevogel.com/wasm-hosted/
https://github.com/ArneVogel/wasm-file-server


````bash
# ------------------------------------
# Install Dot.NEt Core Preview
# ------------------------------------
RUN wget https://download.visualstudio.microsoft.com/download/pr/1c28fb12-c30d-411f-8d63-4dd9835387fe/cfe3d86f5600568ac354f7546f876589/dotnet-sdk-7.0.100-preview.5.22307.18-linux-x64.tar.gz
RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-7.0.100-preview.5.22307.18-linux-x64.tar.gz -C $HOME/dotnet
RUN rm dotnet-sdk-7.0.100-preview.5.22307.18-linux-x64.tar.gz

RUN export DOTNET_ROOT=$HOME/dotnet && \
    export PATH=$PATH:$HOME/dotnet && \
    dotnet workload install wasm-tools
```

```bash
# ------------------------------------
# Install Dot.NEt Core Preview
# ------------------------------------
# See :
# - https://dotnet.microsoft.com/en-us/download/dotnet/7.0
# - https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-7.0.100-preview.7-linux-x64-binaries

RUN wget https://download.visualstudio.microsoft.com/download/pr/aabf15d3-f201-4a6c-9a7e-def050d054af/0a8eba2d8abcf1c28605744f3a48252f/dotnet-sdk-7.0.100-preview.7.22377.5-linux-x64.tar.gz

RUN wget https://download.visualstudio.microsoft.com/download/pr/f5c74056-330b-452b-915e-d98fda75024e/18076ca3b89cd362162bbd0cbf9b2ca5/dotnet-sdk-7.0.100-rc.2.22477.23-linux-x64.tar.gz


RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-7.0.100-preview.7.22377.5-linux-x64.tar.gz -C $HOME/dotnet
RUN rm dotnet-sdk-7.0.100-preview.7.22377.5-linux-x64.tar.gz

RUN export DOTNET_ROOT=$HOME/dotnet && \
    export PATH=$PATH:$HOME/dotnet && \
    dotnet workload install wasm-tools
```

