#!/bin/bash
export CAPSULE_VERSION="v0.3.0"
wget -O - https://raw.githubusercontent.com/bots-garden/capsule/${CAPSULE_VERSION}/install-capsule-launcher.sh| bash

export CAPSULE_BUILDER_VERSION="v0.0.4"
wget -O - https://raw.githubusercontent.com/bots-garden/capsule-function-builder/${CAPSULE_BUILDER_VERSION}/install-capsule-builder.sh | bash
