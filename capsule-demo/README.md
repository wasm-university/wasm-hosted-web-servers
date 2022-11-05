
```bash
CAPSULE_BUILDER_VERSION="v0.0.3"
wget -O - https://raw.githubusercontent.com/bots-garden/capsule-function-builder/${CAPSULE_BUILDER_VERSION}/install-capsule-builder.sh | bash
```

```bash
cabu generate service-get hello-world
```

```bash
cd hello-world
go mod tidy
tinygo build -o hello-world.wasm -scheduler=none -target wasi ./hello-world.go
```

```bash
export CAPSULE_VERSION="v0.2.9"
wget -O - https://raw.githubusercontent.com/bots-garden/capsule/${CAPSULE_VERSION}/install-capsule-launcher.sh| bash

```


```bash
capsule \
  -wasm=./hello-world.wasm \
  -mode=http \
  -httpPort=8080
```
