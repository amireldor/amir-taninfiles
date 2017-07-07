#!/bin/bash
# Create virtualenv for neovim Python 3 and 3 providers

VIRTUALENV_ROOT=/home/amir/.virtualenvs

virtualenv -ppython2 "$VIRTUALENV_ROOT/neovim"
virtualenv -ppython3 "$VIRTUALENV_ROOT/neovim3"

$VIRTUALENV_ROOT/neovim/bin/pip install neovim
$VIRTUALENV_ROOT/neovim3/bin/pip install neovim
