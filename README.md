# dotfiles

Here are copies of my linux dotfiles, backed up to Github and installed using [GNU stow](https://taihen.org/managing-dotfiles-with-gnu-stow/).

## Quick Setup Notes

1. Manually setup the .ssh/config file
2. Manually copy the github_rsa from pCloud to .ssh, change permissions to 600
3. git clone dotfiles repo
4. Install stow
5. Copy ZSH files to get aliases
    1. ```stow -d ~/.dotfiles zsh```
6. Logout and back into shell


## Intel Stick - Ubuntu

stow git <br />
stow nano <br />
stow ssh <br />
stow zsh

## Virtualbox - Ubuntu

stow git <br />
stow nano <br />
stow openbox <br />
stow ssh <br />
stow terminator <br />
stow tint2 <br />
stow zsh
