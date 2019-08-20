#!/bin/sh

exportEnvs() {
    isRequiredSetEnv=true
    while IFS= read -r line || [ -n "${line}" ]; do
        if [ "${1}" = "${line}" ]; then
            isRequiredSetEnv=false
            break
        fi
    done < ~/.bash_profile
    if ${isRequiredSetEnv}; then
        echo "\n${1}" >> ~/.bash_profile
    fi
    source ~/.bash_profile
}
