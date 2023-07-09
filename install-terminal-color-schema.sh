#!/usr/bin/env bash

# Check the Gogh link
# https://github.com/Gogh-Co/Gogh#-install
sudo apt-get install dconf-cli uuid-runtime

# clone the repo into "$HOME/src/gogh"
mkdir -p "$HOME/terminal-color-schema"
cd "$HOME/terminal-color-schema"
git clone https://github.com/Gogh-Co/Gogh.git gogh
cd gogh

# necessary in the Gnome terminal on ubuntu
export TERMINAL=gnome-terminal

# Enter theme installs dir
cd installs

# install themes
./atom.sh

echo "Gogh will download the list of themes available."
echo "Choose option 'ALL' to download all the themes."
echo "Choose option 'ALL' to download all the themes."
sleep 15

echo "Run gogh.sh from ~/terminal-color-schema/gogh/gogh.sh"

