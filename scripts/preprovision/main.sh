#!/bin/sh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${0}) && pwd)

# setup Python3 and Ansible
if [ "$(uname)" == 'Darwin' ]; then
    source ${SCRIPT_DIR}/macos.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    #TODO: add some cases for preprovisioning distributions.
    :
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

# install pipenv
pip3 install pipenv
pipenv install

echo "The pre-provisioning was done."
