#!/usr/bin/env python3

from os import path
from subprocess import Popen, PIPE, STDOUT


def act(system):
    root_dir = path.join(path.dirname(__file__), '../..')
    playbook_file = path.join(root_dir, f'{system}.yml')
    inventory_file = path.join(root_dir, 'localhost')
    with Popen(
        ['ansible-playbook', playbook_file, '-i', inventory_file],
        stdout=PIPE,
        stderr=STDOUT,
        bufsize=1,
        text=True
    ) as process:
        for line in process.stdout:
            print(line, end='')
