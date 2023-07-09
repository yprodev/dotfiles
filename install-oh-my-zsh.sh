#!/usr/bin/env bash

echo "[ACTION] Install Oh My ZSH!"
if [ ! -d ~/.oh-my-zsh ];
then
	echo "[ACTION] Install Oh My ZSH"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # - UNCOMMENT
	echo "--------------------------------------------"
else
	echo "[...no need to act...] oh-my-zsh is installed"
	echo "--------------------------------------------"
fi
