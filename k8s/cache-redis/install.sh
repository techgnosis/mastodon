#! /usr/bin/env bash

set -euo pipefail

kapp \
deploy -a cache-redis \
-f namespace.yaml \
-f deployment.yaml \
-f service.yaml