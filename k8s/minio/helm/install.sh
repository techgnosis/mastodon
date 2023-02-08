#! /usr/bin/env bash

set -euo pipefail

helm upgrade --install minio minio \
--repo https://charts.min.io \
--version 5.0.4 \
--namespace minio \
--create-namespace \
--values values.yml \
--wait
