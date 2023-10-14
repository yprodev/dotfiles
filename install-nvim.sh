#!/bin/bash


echo "[ACTION] Install latest NeoVim (nvim v.0.9.1)"
command -v nvim >/dev/null

if [[ $? -ne 0 ]]; then
    echo "Nvim is not installed"

    sudo apt remove neovim -y
    curl -LO https://github.com/neovim/neovim/releases/download/v0.9.1/nvim.appimage
    chmod u+x nvim.appimage
    sudo mv nvim.appimage /usr/bin/nvim
    # Check NeoVim version installed
    nvim --version

    # TODO: how to add alias with if

    echo 'alias vim=nvim' >> ~/.zshrc
    source ~/.zshrc
    # Check vim updated Alias
    vim --version
else
    nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

    if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
            echo "Wrong version of Nvim is installed"
            sudo apt remove neovim -y
            curl -LO https://github.com/neovim/neovim/releases/download/v0.9.1/nvim.appimage
            chmod u+x nvim.appimage
            sudo mv nvim.appimage /usr/bin/nvim
            # Check NeoVim version installed
            nvim --version

            # TODO: how to add alias with if

            # echo 'alias vim=nvim' >> ~/.zshrc
            # source ~/.zshrc
            # Check vim updated Alias
            # vim --version
    else
        echo "Nvim version 0.9 or greater is installed"
    fi
fi
