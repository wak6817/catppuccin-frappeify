import sys
import re

css = sys.stdin.read()

# Add !important to declarations that don't already have it.
css = re.sub(
    r'(?<![-\w])([-\w]+)\s*:\s*([^;{}]+)(?=;)',
    lambda m: f"{m.group(1)}: {m.group(2).rstrip()} !important",
    css
)

print(css)