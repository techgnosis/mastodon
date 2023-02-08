#! /usr/bin/env zsh

set -euo pipefail

k3sup install \
--ip $(terraform output -raw mastodon) \
--user james_musselwhite_gmail_com \
--local-path ../k8s/kubeconfig-mastodon
