#!/bin/bash

# Define the path to the bash_aliases file
BASH_SETTINGS_FILE=~/ubuntusettings/bash_settings.sh

# Define the snippet to add to .bashrc
BASHRC_SNIPPET="\n# Custom bash settings\nif [ -f $BASH_SETTINGS_FILE ]; then\n\tsource $BASH_SETTINGS_FILE\nfi\n"

# Check if the snippet is already in .bashrc, if not, append it
if ! grep -q "source $BASH_SETTINGS_FILE" ~/.bashrc; then
    echo -e $BASHRC_SNIPPET >> ~/.bashrc
    echo "Snippet added to .bashrc"
else
    echo "Snippet already in .bashrc"
fi

NVIM_SETTINGS_SOURCE_FOLDER=~/ubuntusettings/nvim
NVIM_SETTINGS_TARGET_FOLDER=~/.config/nvim

if test -d $NVIM_SETTINGS_TARGET_FOLDER; then
    echo "nvim config directory exists."
else
    echo 'Creating nvim settings symlink'
    ln -s $NVIM_SETTINGS_SOURCE_FOLDER $NVIM_SETTINGS_TARGET_FOLDER
fi

