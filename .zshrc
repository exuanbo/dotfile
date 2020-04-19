export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

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
alias rebak="/Users/xuanbo/.repos-bak.sh"
alias ip="curl -sH 'Accept: application/json' ifconfig.co | node <<< \"var o = \$(cat); console.log(JSON.stringify(o, null, 2));\""
alias doom="/Users/xuanbo/.emacs.d/bin/doom"
alias git-cz="git cz"
alias ni="npm i"
alias nid="npm i -D"
alias nus="npm uninstall --save"

function mkcd() { mkdir -p "$@" && cd "$_"; }

# https://github.com/xcv58/zsh-lazy-load
function lazy_load() {
    local load_func=${1}
    local lazy_func="lazy_${load_func}"

    shift
    for i in ${@}; do
        alias ${i}="${lazy_func} ${i}"
    done

    eval "
    function ${lazy_func}() {
        unset -f ${lazy_func}
        lazy_load_clean $@
        eval ${load_func}
        unset -f ${load_func}
        eval \$@
    }
    "
}

function lazy_load_clean() {
    for i in ${@}; do
        unalias ${i}
    done
}

source /Users/xuanbo/.env.zsh

