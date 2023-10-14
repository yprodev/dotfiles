#!/usr/bin/env bash

# Install Tmux
echo "--------------------------------------------"
echo "[INSTALL TMUX DEPS]"
sudo apt install gcc \
	libevent-dev \
	ncurses-dev \
	build-essential \
	bison \
	pkg-config # UNCOMMENT ME for the first initial install

echo "--------------------------------------------"
echo "[TMUX DOWNLOAD VERSION - 3.3a]"
mkdir tmux-installation && cd tmux-installation
curl -LO https://github.com/tmux/tmux/releases/download/3.3a/tmux-3.3a.tar.gz

echo "--------------------------------------------"
echo "[TMUX UNPACKAGE AND BUILD PHASE]"
# tmux uses autoconf so it provides a configure script. To build and install into /usr/local using sudo, run:
tar -zxf tmux-*.tar.gz
cd tmux-*/
./configure
make && sudo make install


echo "--------------------------------------------"
echo "[CLEAN UP AFTER TMUX INSTALLATION]"
rm -rf tmux-3.3a tmux-installation
rm tmux-3.3a.tar.gz


echo "--------------------------------------------"
echo "[TMUX VERSION CHECK]"
tmux -V

# UNCOMMENT if block
if [ ! -d ~/.tmux/plugins/tpm ];
then
	echo "--------------------------------------------"
	echo "[ACTION] Install TMUX Plugin Manager (TPM)"
	git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
else
	echo "--------------------------------------------"
	echo "[................] TMUX Plugin Manager (TPM) is installed"
fi

echo "--------------------------------------------"
echo "[ACTION] Copy the TMUX Configuration file into the $HOME directory"
# Don't use $HOME directory for the dot-files. The modern way is to keep everything in $XDG_CONFIG_HOME, which is $HOME/.config/. However, we will use the old way for now.

mkdir -p ~/.config/tmux/
# Resulting file without dot --> tmux.conf
cp .tmux.conf "$HOME/.config/tmux/tmux.conf" # UNCOMMENT ME 

echo "--------------------------------------------"
