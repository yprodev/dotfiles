#!/usr/bin/env bash

echo "[ACTION] Install ZSH and make it a default shell"
# Need to have if/else statements to chech if zsh is installed
if [[ ! -n "$($SHELL -c 'echo $ZSH_VERSION')" ]];
then
	sudo apt install zsh # - UNCOMMENT
	zsh --version # - UNCOMMENT
	# Do it a default shell
	chsh -s $(which zsh) # - UNCOMMENT

	echo "[FOLLOW ALONG] ZSH was defined as a default shell"
	echo "--- Please, log out and log in back to check if everything is okay"
	echo "--- Use 'echo $SHELL' OR '$SHELL --version' command to check the result (/bin/zsh)"
	echo "--------------------------------------------"
else
	echo "[...no need to act...] zsh is installed"
	echo "--------------------------------------------"
fi
