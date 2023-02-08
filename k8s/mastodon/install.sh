#! /usr/bin/env bash

set -euo pipefail

kapp \
deploy -a mastodon \
-f service.yaml \
-f deployment-web.yaml \
-f deployment-streaming.yaml \
-f ingress.yaml \
-f deployment-sidekiq.yaml \
-f pvc.yaml