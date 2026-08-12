#!/bin/sh

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

cat "$ROOT/src/colorv/interactions.css" \
    "$ROOT/src/colorv/other.css" \
    "$ROOT/src/colorv/text.css" \
    "$ROOT/src/pixelv/fonts.css" \
    "$ROOT/src/pixelv/margins.css" \
    "$ROOT/src/color-trans.css" \
    | lua "$ROOT/build/add-important.lua" \
    > "$ROOT/build/dist/pixelv/pixelv.css"

cp "$ROOT/sounds/script.js" "$ROOT/build/dist/pixelv/"
cp "$ROOT/sounds/clickbtn.wav" "$ROOT/build/dist/pixelv/assets/"