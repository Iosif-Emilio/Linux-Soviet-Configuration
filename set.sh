#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"


if ! command -v plank &> /dev/null; then
    sudo apt update
    sudo apt install -y plank
fi


if ! command -v fastfetch &> /dev/null; then
    sudo apt update
    if sudo apt install -y fastfetch; then
        echo ""
    else
        sudo snap install fastfetch
    fi
fi


ORIG_CONFIG="Put on .config"
ORIG_ICONS="Put on .icons"



rm -rf ~/.config/plank
cp -r "$ORIG_CONFIG/plank" ~/.config


rm -rf ~/.config/fastfetch
cp -r "$ORIG_CONFIG/fastfetch" ~/.config


mkdir -p ~/.icons
cp -r "$ORIG_ICONS/kora-green" ~/.icons/

