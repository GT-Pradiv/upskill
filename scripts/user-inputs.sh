#!/bin/bash

# Basic read
read NAME
echo "You typed: $NAME"

# With a prompt on the same line
read -p "Enter environment (prod/staging): " ENV
echo "Deploying to: $ENV"

# Read a password (hidden input)
read -s -p "Password: " PASS
echo    # newline after hidden input
echo "Got the password (length: ${#PASS})"

# Read with a timeout (5 seconds)
read -t 5 -p "Confirm deploy? [y/N]: " CONFIRM
if [[ "$CONFIRM" != "y" ]]; then
  echo "Aborted."
  exit 0
fi

