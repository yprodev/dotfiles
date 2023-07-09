#!/usr/bin/env bash

# Install Tmux
sudo apt install tmux

if [ ! -d ~/.tmux/plugins/tpm ];
then
	echo "[ACTION] Install TMUX Plugin Manager (TPM)"
	git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
	echo "--------------------------------------------"
else
	echo "[...no need to act...] TMUX Plugin Manager (TPM) is installed"
	echo "--------------------------------------------"
fi

echo "--------------------------------------------"
echo "[ACTION] Copy the TMUX Configuration file into the $HOME directory"
# Don't use $HOME directory for the dot-files. The modern way is to keep everything in $XDG_CONFIG_HOME, which is $HOME/.config/. However, we will use the old way for now.
cp .tmux.conf "$HOME/.tmux.conf"

echo "--------------------------------------------"
