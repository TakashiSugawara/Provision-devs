#!/bin/sh

installApp() {
    set +e
    local status=0
    eval ${2} >/dev/null 2>&1
    if [ ${?} -ne 0 ]; then
        echo "${1} is being installed..."
        eval ${3}
        status=${?}
        echo "${1}'s installation was done.'"
    fi
    set -e
    return ${status}
}
