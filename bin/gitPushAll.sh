#!/bin/bash

set -euo pipefail

NAME=$(basename $0)
if [ "$NAME" == "gitPullAll.sh" ]; then
  mode=pull
else
  mode=push
fi

for f in $PWD/*;
do
    [ -d "$f"/.git ] && echo "$mode $f" && cd "$f" && git $mode
done
