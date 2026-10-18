#!/usr/bin/env bash
set -e

if [ "$#" -eq 0 ]; then
  echo "Використання: ./md2pdf.sh <файл1.md> [файл2.md ...]"
  exit 1
fi

export PUPPETEER_EXECUTABLE_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

for file in "$@"; do
  if [ -f "$file" ]; then
    md-to-pdf "$file"
  else
    echo "Пропущено (не файл): $file"
  fi
done
