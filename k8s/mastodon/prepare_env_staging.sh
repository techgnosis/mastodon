#! /usr/bin/env bash

set -euo pipefail

kapp \
deploy -a mastodon-env \
-f namespace.yaml \
-f certificate-staging.yaml \
-f <(ytt -f configmap.yaml --data-values-env SECRETS) \
-f job-db-migrate.yaml