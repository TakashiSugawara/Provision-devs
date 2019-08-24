#!/bin/sh

updateApp() {
    local status=0
    echo "${1} is being updating..."
    eval ${2}
    status=${?}
    echo "${1}'s update was done.'"
    return ${status}
}
