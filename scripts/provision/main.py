#!/usr/bin/env python3

from os import path
from platform import system
from yaml import safe_load
from act import act


uname = system()
systems_file = path.join(path.dirname(__file__), 'systems.yml')

with open(systems_file, 'r') as yaml:
    systems = safe_load(yaml)

    if uname in systems:
        act(systems[uname])
