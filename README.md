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
7. Remove .ssh/config
8. stow ssh
9. stow nano
10. stow tmux
11. stow git
12. Manually copy the digitalocean_rsa from pCloud to .ssh, change permissions to 600
13. Manually copy the home_rsa from pCloud to .ssh, change permissions to 600

## Virtualbox - Ubuntu

* stow git
* stow nano
* stow openbox
* stow ssh
* stow terminator
* stow tint2
* stow zsh
