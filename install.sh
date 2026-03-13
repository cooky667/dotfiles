#!/usr/bin/env bash
# Stow all packages (top-level directories) in this repo.
# Run from the root of the dotfiles repo: ./install.sh

set -euo pipefail
shopt -s nullglob

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Directories to skip (add more as needed)
SKIP=(".git")

stow_package() {
    local pkg="$1"
    echo "Stowing: $pkg"
    stow --dir="$DOTFILES_DIR" --target="$HOME" --restow "$pkg"
}

for dir in "$DOTFILES_DIR"/*/; do
    pkg="$(basename "$dir")"

    # Skip entries in the SKIP list
    skip=false
    for s in "${SKIP[@]}"; do
        if [[ "$pkg" == "$s" ]]; then
            skip=true
            break
        fi
    done

    if [[ "$skip" == false ]]; then
        stow_package "$pkg"
    fi
done

echo "Done."
