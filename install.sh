#!/usr/bin/env bash
# install.sh - Symlink dotfiles into place

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

create_symlink() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "Backing up existing $dest to $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    mkdir -p "$(dirname "$dest")"
    ln -sfn "$src" "$dest"
    echo "Linked $src -> $dest"
}

echo "Installing dotfiles from $DOTFILES_DIR..."

# Sway
create_symlink "$DOTFILES_DIR/sway/config" "$HOME/.config/sway/config"

echo "Done!"
