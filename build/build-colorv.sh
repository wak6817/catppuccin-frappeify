#!/bin/sh

cat "$ROOT/src/colorv/colors.css" \
    "$ROOT/src/colorv/interactions.css" \
    "$ROOT/src/colorv/other.css" \
    "$ROOT/src/colorv/text.css" \
    | lua "$ROOT/build/add-important.lua" \
    > "$ROOT/build/colorv.css"