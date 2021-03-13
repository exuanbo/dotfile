# n
export N_PREFIX="$HOME/n"
export N_PRESERVE_NPM=1
export PATH="$N_PREFIX/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# mono
export MONO_GAC_PREFIX="/usr/local"

# haskell ghcup
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# ruby-build
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# rbenv
eval "$(rbenv init -)"

# conda
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

