#!/bin/sh

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

cat "$ROOT/src/colorv/colors.css" \
    "$ROOT/src/colorv/interactions.css" \
    "$ROOT/src/colorv/other.css" \
    "$ROOT/src/colorv/text.css" \
    | python3 "$ROOT/build/add-important.py" \
    > "$ROOT/build/colorv.css"