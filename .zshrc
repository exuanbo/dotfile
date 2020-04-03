source ~/.env.sh

export ZSH="/Users/xuanbo/.oh-my-zsh"

ZSH_THEME="astro"
ENABLE_CORRECTION="true"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
#
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias config="/usr/bin/git --git-dir=/Users/xuanbo/.cfg/ --work-tree=/Users/xuanbo"
alias rebak="~/.repos-bak.sh"
alias ip="curl -L tool.lu/ip"
alias doom="~/.emacs.d/bin/doom"

function mkcd() { mkdir -p "$@" && cd "$_"; }

