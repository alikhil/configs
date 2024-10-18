#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

echo "source $SCRIPT_DIR/.shellrc" >> ~/.zshrc
echo "source $SCRIPT_DIR/.shellrc" >> ~/.bashrc

echo ".shellrc has been sourced in ~/.zshrc and ~/.bashrc"