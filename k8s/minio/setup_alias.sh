#! /usr/bin/env bash

set -euo pipefail

mc alias set mastodon-minio http://localhost:9000 ${SECRETS_access_key} ${SECRETS_secret_access_key}