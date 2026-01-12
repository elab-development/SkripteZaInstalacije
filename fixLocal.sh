#!/bin/bash

find /home/student/.config/Local -type f -name "*.json" | while read -r file; do
  # Ako je fajl prazan ili sadrži samo {}
  if [ ! -s "$file" ]; then
    # Upisuje {} u fajl
    echo "{}" > "$file"
    echo "$file is empty or contains only {}"
  fi
done
