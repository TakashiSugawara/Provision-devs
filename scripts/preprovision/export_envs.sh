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
        if [ $( tail -n 1 ~/.bash_profile 2>/dev/null | wc -l ) -ne 1 ]; then
            echo '' >> ~/.bash_profile
        fi
        echo "${1}" >> ~/.bash_profile
    fi
    source ~/.bash_profile
}
