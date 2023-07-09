#!/usr/bin/env bash

# https://askubuntu.com/questions/3697/how-do-i-install-fonts
echo "[ACTION] Install Nerd Font"
echo "Create .fonts directory in HOME"
mkdir $HOME/.fonts

echo "Download the JetBrainsMono Nerd Font"
curl -LO -o ./downloads-test https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip

echo "Unzip in directory"
unzip JetBrainsMono.zip

echo "Remove zip archive"
rm JetBrainsMono.zip

echo "[FINISHED] Font is installed"
