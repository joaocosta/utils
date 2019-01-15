#!/bin/bash

set -euo pipefail

for f in $PWD/*;
do
    [ -d "$f"/.git ] && echo "Pulling $f" && cd "$f" && git pull
done
