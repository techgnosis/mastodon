#! /usr/bin/env bash

set -euo pipefail

kapp \
deploy -a cert-manager \
-f https://github.com/cert-manager/cert-manager/releases/download/v1.11.0/cert-manager.yaml \
-f <(ytt -f letsencrypt.yaml --data-values-env SECRETS)