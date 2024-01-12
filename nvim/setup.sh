#!/bin/bash

install_golps() {
    echo "Installing golang LSP..."

    result=$(go install golang.org/x/tools/gopls@latest 2>&1)

    if [ $? -eq 0 ]; then
        echo "Installation successful"
        echo "$result"
    else    
        echo "Failed to install golang LSP. Error:"
        echo "$result"
    fi
}


install_golps
