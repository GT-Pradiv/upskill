#!/bin/bash
# Run this as: ./special-vars.sh hello world

echo "Script name:  $0"
echo "First arg:    $1"
echo "Second arg:   $2"
echo "All args:     $@"
echo "Arg count:    $#"
echo "My PID:       $$"

# Check if enough args were passed
if [[ $# -lt 2 ]]; then
  echo "Error: need at least 2 arguments"
  exit 1
fi

# $? captures success/failure of last command
ls /nonexistent 2>/dev/null
echo "Exit code: $?"    # → 2 (error)
ls /etc
echo "Exit code: $?"    # → 0 (success)

