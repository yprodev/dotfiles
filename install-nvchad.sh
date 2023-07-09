#!/usr/bin/env bash

# Remove previous nvim local cache
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

echo "[MANUAL ACTION] IMPRTANT! On the first open of NeoVim"
echo "you would be suggested to install example custom config."
echo "Type in 'n' as a 'no'. Wait until all the plugins will be installed."
