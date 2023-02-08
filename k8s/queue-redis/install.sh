#! /usr/bin/env bash

set -euo pipefail

kapp deploy -a queue-redis \
-f namespace.yaml \
-f deployment.yaml \
-f service.yaml