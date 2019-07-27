#!/usr/bin/env bash

set -euo pipefail

here=`cd $(dirname $BASH_SOURCE); pwd`
source $here/env.sh

FN=$1

$EMACS --batch --directory "$MODULE_DIR" \
       -l "$PROJECT_ROOT/test-module/tests/main.el" -f $FN
