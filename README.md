# Dotfiles

My personal dotfiles.

## Installation

Install git and some other tools we'd like to use:

    ~$ sudo apt update
    ~$ sudo apt install zsh vim git

Change default shell to zsh and logout to apply changes:

    ~$ chsh -s $(which zsh)

Setup ssh keys:

    ~$ eval "$(ssh-agent -s)"
    ~$ ssh-add ~/.ssh/id_ed25519

Deploy personal dotfiles:

    ~$ git clone https://github.com/mrwindmills/dotfiles.git ~/.dotfiles

Set it up:

    ~$ mv ~/.zshrc ~/.zshrc~
    ~$ ln -s ~/.dotfiles/zshrc ~/.zshrc
    ~$ source ~/.zshrc
