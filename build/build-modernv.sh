#!/bin/sh

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

cat "$ROOT/src/colorv/interactions.css" \
    "$ROOT/src/colorv/other.css" \
    "$ROOT/src/colorv/text.css" \
    "$ROOT/src/modernv/fonts.css" \
    "$ROOT/src/modernv/margins.css" \
    "$ROOT/src/color-trans.css" \
    | lua "$ROOT/build/add-important.lua" \
    > "$ROOT/build/out/modernv.css"