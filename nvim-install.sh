#!/bin/bash

command -v nvim >/dev/null

if [[ $? -ne 0 ]]; then
    echo "Nvim is not installed"
else
    nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

    if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
            echo "Wrong version of Nvim is installed"
            sudo apt remove neovim -y
            # Remove previous nvim local cache
            rm -rf ~/.config/nvim
            rm -rf ~/.local/share/nvim
            rm -rf ~/.local/state/nvim
            rm -rf ~/.cache/nvim
            curl -LO https://github.com/neovim/neovim/releases/download/v0.9.1/nvim.appimage
            chmod u+x nvim.appimage
            sudo mv nvim.appimage /usr/bin/nvim
            # Check NeoVim version installed
            nvim --version
            # TODO: how to add alias with if
            # Check vim updated Alias
            # vim --version
    else
        echo "Nvim version 0.9 or greater is installed"
    fi
fi
