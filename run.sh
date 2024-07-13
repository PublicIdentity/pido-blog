#!/usr/bin/env bash
#
# run Jekyll locally
#

set -o errexit
set -o pipefail
set -o nounset

jekyll serve \
    --future \
    --port 4000 \
    --source docs \
    --watch
