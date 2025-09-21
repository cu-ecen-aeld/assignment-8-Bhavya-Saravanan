#!/bin/sh
# clean.sh - run a full distclean on Buildroot

set -e

# cd to repo root (folder containing buildroot/)
SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
cd "$SCRIPT_DIR"

if [ -d buildroot ]; then
  echo "Running make distclean in buildroot..."
  make -C buildroot distclean
  echo "Done. Buildroot output has been cleaned."
else
  echo "Error: buildroot directory does not exist in $(pwd)" >&2
  exit 1
fi
