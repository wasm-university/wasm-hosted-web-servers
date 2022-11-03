https://wasmedge.org/book/en/write_wasm/rust/networking.html#an-http-server-example

wasmedge target/wasm32-wasi/release/http_server.wasm
wasmedge target/wasm32-wasi/debug/http_server.wasm

curl -d "name=WasmEdge" -X POST http://127.0.0.1:1234


wasmtime target/wasm32-wasi/debug/http_server.wasm --tcplisten localhost:1234

wasmtime run --tcplisten 127.0.0.1:1234 target/wasm32-wasi/debug/http_server.wasm


```bash
wasmtime target/wasm32-wasi/debug/http_server.wasm --tcplisten localhost:1234
Error: failed to run main module `target/wasm32-wasi/debug/http_server.wasm`

Caused by:
    0: failed to instantiate "target/wasm32-wasi/debug/http_server.wasm"
    1: unknown import: `wasi_snapshot_preview1::sock_setsockopt` has not been defined
```
