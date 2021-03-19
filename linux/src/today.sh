#!/bin/bash
# set -x
# set -euo pipefail
IFS=$'\n\t'

declare today
today="$(date -I).md"

nvim $today
