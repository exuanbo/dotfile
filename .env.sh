export HOMEBREW_NO_ANALYTICS=1

# csharp mono
export MONO_GAC_PREFIX="/usr/local"

# haskell ghcup
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# openjdk
export JAVA_HOME="/usr/local/opt/openjdk"

# node n
export N_PREFIX="$HOME/n"
export N_PRESERVE_NPM=1
export PATH="$N_PREFIX/bin:$PATH"

# ocaml opam
[[ ! -r "$HOME/.opam/opam-init/init.zsh" ]] || source "$HOME/.opam/opam-init/init.zsh"  > /dev/null 2> /dev/null

# python conda
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup

# ruby-build
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

# ruby rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
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

# rustup-init
. "$HOME/.cargo/env"
