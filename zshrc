# vim:ft=zsh
# File: $DOTFILES_DIR/zshrc


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export DOTFILES_DIR="${HOME}/.dotfiles"
export ZSH_DOTFILES_DIR="${DOTFILES_DIR}/zsh"

. ${ZSH_DOTFILES_DIR}/env.zsh
. ${ZSH_DOTFILES_DIR}/plugins.zsh
. ${ZSH_DOTFILES_DIR}/config.zsh
. ${ZSH_DOTFILES_DIR}/aliases.zsh
. ${ZSH_DOTFILES_DIR}/functions.zsh
