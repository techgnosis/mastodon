#! /usr/bin/env bash

set -euo pipefail

kapp \
deploy -a minio \
-f configmap.yaml \
-f deployment.yaml \
-f job.yaml \
-f namespace.yaml \
-f pvc.yaml \
-f secret.yaml \
-f service-minio.yaml \
-f service-minio-console.yaml \
-f serviceaccount.yaml