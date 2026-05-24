#!/bin/bash

echo "This script should accept a name as the first argument"

if [[ -n "$1" ]]; then
	NAME="$1"
else
	read -p "What's your name?" NAME
fi

TODAY=$(date +%Y-%m-%d)
HOST=$(hostname)

echo "Hello, $NAME! Today is $TODAY. You are on $HOSTNAME"
