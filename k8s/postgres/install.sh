#! /usr/bin/env bash

set -euo pipefail

kapp \
deploy -a postgres \
-f namespace.yaml \
-f deployment.yaml \
-f service.yaml \
-f pvc.yaml \
-f <(ytt -f configmap.yaml --data-values-env SECRETS)