#!/bin/bash

install_golps() {
    echo "Installing golang LSP..."

    result=$(go install golang.org/x/tools/gopls@latest 2>&1)

    if [ $? -eq 0 ]; then
        result=""
    else    
        echo "Failed to install golang LSP. Error:"
        echo "$result"
    fi
}

install_bash_lsp() {
    echo "Installing bash LSP..."

    result=$(npm i -g bash-language-server 2>&1)

    if [ $? -eq 0 ]; then
        result=""
    else    
        echo "Failed to install bash LSP. Error:"
        echo "$result"
    fi

}

install_golps
install_bash_lsp
echo "LSPs installation complete"
