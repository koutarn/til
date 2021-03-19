#!/bin/bash
# set -x
# set -euo pipefail
IFS=$'\n\t'

yesterday="$(date -d '1 day ago' -I).md"
nvim $yesterday
