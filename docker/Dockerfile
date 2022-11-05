#FROM gitpod/workspace-full
FROM gitpod/workspace-dotnet


RUN sudo apt-get update && \
    sudo apt-get install gettext libncurses5 libxkbcommon0 libtinfo5 -y

USER gitpod

RUN brew install bat && \
    brew install exa && \
    brew install hey
    #brew install redis

# ------------------------------------
# Install TinyGo
# ------------------------------------
ARG TINYGO_VERSION="0.25.0"
RUN wget https://github.com/tinygo-org/tinygo/releases/download/v${TINYGO_VERSION}/tinygo_${TINYGO_VERSION}_amd64.deb
RUN sudo dpkg -i tinygo_${TINYGO_VERSION}_amd64.deb
RUN rm tinygo_${TINYGO_VERSION}_amd64.deb

# ------------------------------------
# Install Wasi Runtimes
# ------------------------------------
RUN curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash -s -- -v 0.11.1 && \
    curl https://get.wasmer.io -sSfL | sh && \
    curl https://wasmtime.dev/install.sh -sSf | bash


# ------------------------------------
# Install Rust support
# ------------------------------------
RUN rustup toolchain uninstall stable-x86_64-unknown-linux-gnu && \
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y && \
    curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh && \
    rustup target add wasm32-wasi

# ------------------------------------
# Install Dot.NEt Core Preview
# ------------------------------------
# See :
# - https://dotnet.microsoft.com/en-us/download/dotnet/7.0
# - https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-7.0.100-preview.7-linux-x64-binaries

RUN wget https://download.visualstudio.microsoft.com/download/pr/f5c74056-330b-452b-915e-d98fda75024e/18076ca3b89cd362162bbd0cbf9b2ca5/dotnet-sdk-7.0.100-rc.2.22477.23-linux-x64.tar.gz

RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-7.0.100-rc.2.22477.23-linux-x64.tar.gz -C $HOME/dotnet
RUN rm dotnet-sdk-7.0.100-rc.2.22477.23-linux-x64.tar.gz

RUN export DOTNET_ROOT=$HOME/dotnet && \
    export PATH=$PATH:$HOME/dotnet && \
    dotnet workload install wasm-tools
