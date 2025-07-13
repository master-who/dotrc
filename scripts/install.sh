#!/bin/bash

echo "Detecting current shell..."
shell_name=$(basename "$SHELL")
if [ "$shell_name" = "zsh" ]; then
    rcfile="$HOME/.zshrc"
    echo "Shell is zsh. Using $rcfile"
else
    rcfile="$HOME/.bashrc"
    echo "Shell is not zsh. Using $rcfile"
fi

src_file="$(dirname "$0")/../shrc"
echo "Copying $src_file to $rcfile..."
cp "$src_file" "$rcfile"

echo "Sourcing $rcfile..."
source "$rcfile"
echo "Done."
