#! /usr/bin/env zsh

set -euo pipefail

if [ -f .terraform.lock.hcl ]; then
    rm .terraform.lock.hcl
fi


if [ -f terraform.tfstate ]; then
    rm terraform.tfstate
fi

if [ -f terraform.tfstate.backup ]; then
    rm terraform.tfstate.backup
fi

if [ -f .terraform ]; then
    rm -rf .terraform
fi

terraform init