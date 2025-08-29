#!/usr/bin/env bash

input=$1

# Check if value was given
if [ -z "$input" ]; then
    echo "❌ Error: No time given."
    echo "Usage: $0 <number>[s|m|h]"
    echo "Examples: $0 10s | $0 5m | $0 2h"
    exit 1
fi

total_seconds=0
unit=""

# Parse input (supports s, m, h)
case "$input" in
    *h) total_seconds=$(( ${input%h} * 3600 )); unit="h" ;;
    *m) total_seconds=$(( ${input%m} * 60 )); unit="m" ;;
    *s) total_seconds=$(( ${input%s} )); unit="s" ;;
    *) echo "❌ Invalid format. Use: <number>[s|m|h] (e.g. 10s, 5m, 2h)"; exit 1 ;;
esac

while [ $total_seconds -ge 0 ]; do
    h=$((total_seconds / 3600))
    m=$(( (total_seconds % 3600) / 60 ))
    s=$((total_seconds % 60))

    case $unit in
        h) printf "\r%02d:%02d:%02dH" "$h" "$m" "$s" ;;
        m) printf "\r%02d:%02dM" "$m" "$s" ;;
        s) printf "\r%02dS" "$s" ;;
    esac

    sleep 1
    ((total_seconds--))
done

printf "\n"
