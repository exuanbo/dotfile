# shellcheck shell=bash
# shellcheck disable=SC1090,SC1091

export ZSH="$HOME/.oh-my-zsh"

# shellcheck disable=SC2034
function oh-my-zsh() {
  local ZSH_THEME="exuanbo"

  local plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
  )

  source "$ZSH/oh-my-zsh.sh"
}

oh-my-zsh
unset -f oh-my-zsh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias dot='git --git-dir=$HOME/.cfg --work-tree=$HOME'

source "$HOME/.setup_env.sh"
