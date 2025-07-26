#!/bin/bash

# This script creates a range of assembly files for exercises.
# Usage: ./create_exercises.sh <start> <end>
# Example: ./create_exercises.sh 1 10

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start> <end>"
    exit 1
fi

start=$1
end=$2

for i in $(seq $start $end)
do
   touch "exercise${i}.asm"
done

echo "Created files from exercise${start}.asm to exercise${end}.asm"
