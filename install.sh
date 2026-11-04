#!/bin/sh
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"
curl -fsSL https://raw.githubusercontent.com/JovianOps/cheat/master/cheat -o "$INSTALL_DIR/cheat"
chmod +x "$INSTALL_DIR/cheat"
mkdir -p "$HOME/.cheat"
echo "Installed to $INSTALL_DIR/cheat"
