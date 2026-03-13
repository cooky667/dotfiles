# dotfiles

A place to store my dotfiles for use with [sway](https://swaywm.org/), a tiling Wayland compositor.

## Contents

- `sway/config` — sway window manager configuration

## Installation

Clone the repository and run the install script to symlink the dotfiles into place:

```bash
git clone https://github.com/cooky667/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script will:
- Back up any existing config files (appending `.bak`)
- Create symlinks from `~/.config/` to the files in this repository

## Key Bindings (sway)

| Binding | Action |
|---|---|
| `Super + Return` | Open terminal (`foot`) |
| `Super + d` | Open application launcher (`wmenu`) |
| `Super + Shift + q` | Close focused window |
| `Super + Shift + c` | Reload sway config |
| `Super + Shift + e` | Exit sway |
| `Super + [1-0]` | Switch to workspace |
| `Super + Shift + [1-0]` | Move window to workspace |
| `Super + f` | Toggle fullscreen |
| `Super + Shift + Space` | Toggle floating |
| `Super + r` | Enter resize mode |
