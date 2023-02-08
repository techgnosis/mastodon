#! /usr/bin/env bash

set -euo pipefail

kapp deploy -a smtp \
-f deployment.yaml \
-f namespace.yaml \
-f service.yaml