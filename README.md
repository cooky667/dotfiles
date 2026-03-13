# dotfiles

A place to store my dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each program or tool has its own directory (called a *package*) inside this repo. Within each package, files are arranged exactly as they would appear relative to `$HOME`. For example:

```
dotfiles/
├── bash/
│   └── .bashrc
├── git/
│   └── .gitconfig
├── vim/
│   └── .vimrc
└── zsh/
    └── .zshrc
```

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/) — install via your package manager:
  - **Arch / Manjaro:** `sudo pacman -S stow`
  - **Debian / Ubuntu:** `sudo apt install stow`
  - **Fedora:** `sudo dnf install stow`
  - **macOS (Homebrew):** `brew install stow`

## Setup

1. Clone this repository into your home directory (stow works best when the dotfiles repo lives directly inside `$HOME`):

   ```sh
   git clone https://github.com/cooky667/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Stow an individual package:

   ```sh
   stow bash
   ```

   This creates a symlink `~/.bashrc → ~/dotfiles/bash/.bashrc`.

3. Or stow everything at once using the provided install script:

   ```sh
   ./install.sh
   ```

## Adding dotfiles

1. Create a directory for the program (e.g. `mkdir -p ~/dotfiles/bash`).
2. Move the config file(s) into it, mirroring the path relative to `$HOME`:

   ```sh
   mkdir -p ~/dotfiles/bash
   mv ~/.bashrc ~/dotfiles/bash/.bashrc
   ```

3. Stow the package to restore the symlink:

   ```sh
   cd ~/dotfiles && stow bash
   ```

## Removing (unstowing) dotfiles

To remove the symlinks for a package without deleting the files from the repo:

```sh
cd ~/dotfiles && stow -D bash
```

## Restowing (re-sync after changes)

If you have restructured files inside a package, use `-R` to restow:

```sh
cd ~/dotfiles && stow -R bash
```
