#!/bin/sh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${0}) && pwd)
readonly PROJECT_DIR=$(cd ${SCRIPT_DIR}/../.. && pwd)

# setup Python3 and Ansible
if [ $(uname) == 'Darwin' ]; then
    source ${SCRIPT_DIR}/macosx.sh
elif [ $(expr substr $(uname -s) 1 5) == 'Linux' ]; then
    #TODO: add some cases for preprovisioning distributions.
    :
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

echo 'The pre-provisioning was done.'
