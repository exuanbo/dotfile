# openssl@1.1
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# n
export N_PREFIX="$HOME/n"
export N_PRESERVE_NPM=1
export PATH="$N_PREFIX/bin:$PATH"

# rust
export PATH="/Users/xuanbo/.cargo/bin:$PATH"

# homebrew python
#export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# mono
export MONO_GAC_PREFIX="/usr/local"

# haskell ghcup
export PATH="$HOME/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:$PATH"

# ruby-build
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# rbenv
# eval "$(rbenv init -)"
export PATH="/Users/xuanbo/.rbenv/shims:${PATH}"
export RBENV_SHELL=zsh
source '/usr/local/Cellar/rbenv/1.1.2/libexec/../completions/rbenv.zsh'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}

# conda init
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

