#!/bin/bash

set -e

# --- OVERVIEW ---
# This script sets-up the system

# this script is only designed to work on linux machines
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo "Unsupported Operating System"
    exit
fi

# for files downloaded during setup
DL_DIR=$HOME/dl
VUSER=${SUDO_USER}
VHOME=/home/${VUSER}

# install system dependencies
setup() {
    echo "[*] Installing dependencies"
    # non-interactive install
    sudo apt update -y && DEBIAN_FRONTEND=noninteractive sudo apt install -y \
        ruby-full \
        build-essential \
        zlib1g-dev

    echo "[*] Update ${VUSER} environment for installing ruby gems."
    echo '# Install Ruby Gems to ~/gems' >> ${VHOME}/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ${VHOME}/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ${VHOME}/.bashrc
    source ${VHOME}/.bashrc
    
    echo "[*] Installing jekyll..."
    su - ${VUSER} -c 'export GEM_HOME="$HOME/gems" && export PATH="$HOME/gems/bin:$PATH" && gem install jekyll bundler'
    
    echo "[+] Finished setup."
}

# print a message showing the script command format to the user
usage() {
    echo "usage: $0 [--setup] [-h | --help]]"
}

# parse arguments passed to script
while [ "$1" != "" ]; do
    case $1 in
        --setup )
            setup
            ;;
        -h | --help )
            usage
            exit
            ;;
        * )
            usage
            exit 1
    esac
    shift
done