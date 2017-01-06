#!/bin/bash

set -e

#
# SINCE PHANTOMJS DOES NOT REACT TO CTRL+C
# BUT INSTEAD TO SIGTERM WE NEED TO USE THIS APPROACH
#
function exec_sigterm_aware() {
    exec "$@" &
    pid="$!"
    trap "kill -SIGQUIT $pid" INT
    wait
}

exec_sigterm_aware "$@"