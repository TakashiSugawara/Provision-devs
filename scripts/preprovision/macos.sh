#!/bin/sh

source ${SCRIPT_DIR}/install_app.sh

# Install (or update) Homebrew
installApp 'Homebrew' 'brew --version' '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
updateApp 'Homebrew' 'brew update && brew upgrade'

# Install Python3
installApp 'Python' 'python3 --version' 'brew install python3'

# Install Ansible
installApp 'Ansible' 'ansible --version' 'brew install ansible'

# fix any “Too many open files” error
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#control-node-requirements
sudo launchctl limit maxfiles unlimited
