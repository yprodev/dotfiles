#!/usr/bin/env bash

echo "[LINUX ENVIRONMENT] Start the setup"
echo "Debian distribution (Ubuntu)"

# List the shells available
sudo cat /etc/shells # - UNCOMMENT
# Define the path to the bash shell
chsh -s $(which bash)
sudo apt update
sudo apt upgrade

echo "[ACTION] Install dependencies"
echo "[LIST] cURL, wget, tmux, git, dconf-cli, uuid-runtime"

# Gogh dependencies - dconf-cli, uuid-runtime
sudo apt install \
	curl \
	tmux \
	wget \
	git \
	dconf-cli \
	uuid-runtime

echo "--------------------------------------------"
