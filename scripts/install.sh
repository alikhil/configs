#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

echo "source $SCRIPT_DIR/.shellrc" >> ~/.zshrc
echo "source $SCRIPT_DIR/.profile" >> ~/.zprofile
echo "source $SCRIPT_DIR/.shellrc" >> ~/.bashrc
echo "source $SCRIPT_DIR/.profile" >> ~/.bash_profile


echo ".shellrc has been sourced in ~/.zshrc and ~/.bashrc"