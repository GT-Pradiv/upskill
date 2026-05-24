#!/bin/bash

# Define variables — NO spaces around =
NAME="Pradiv"
AGE=30
DEPLOY_ENV="local_docker_image"

# Use variables — prefix with $
echo "Hello, $NAME!"
echo "Deploying to $DEPLOY_ENV"

# Curly braces for clarity (required when followed by text)
echo "User is ${NAME}s account"   # → "Users account" (not $NAMEs)

# Command output stored in a variable (command substitution)
TODAY=$(date +%Y-%m-%d)
HOSTNAME_VAL=$(hostname)
echo "Today: $TODAY on $HOSTNAME_VAL"
