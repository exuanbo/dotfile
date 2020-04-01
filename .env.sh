#!/bin/zsh

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" ||   printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# rust
export PATH="/Users/xuanbo/.cargo/bin:$PATH"

# homebrew python
#export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# mono
export MONO_GAC_PREFIX="/usr/local"

# homebrew llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# haskell ghcup
export PATH="$HOME/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:   $PATH"

# homebrew rbenv
# for ruby-build
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# load rbenv automatically
eval "$(rbenv init -)"

# iterm2
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/xuanbo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/xuanbo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/xuanbo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/xuanbo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda activate myenv
# <<< conda initialize <<<

