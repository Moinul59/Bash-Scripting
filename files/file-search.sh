#! /usr/bin/bash

# Find and print only human-readable file(text files)

find . -maxdepth 1 -type f -print0 \
| while IFS= read -r -d '' f; do
if file -- "$f" | grep -qi 'text'; then
printf '== %s ==\n' "$f"
cat -- "$f"
fi
done
