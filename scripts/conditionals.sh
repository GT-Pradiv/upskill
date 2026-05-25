#!/bin/bash

# Basic structure
if [[ "$ENV" == "production" ]]; then
  echo "Deploying to PRODUCTION"
elif [[ "$ENV" == "staging" ]]; then
  echo "Deploying to staging"
else
  echo "Unknown environment: $ENV"
  exit 1
fi

# One-liner shorthand: && (if true) || (if false)
[[ -f /etc/passwd ]] && echo "file exists" || echo "missing"

