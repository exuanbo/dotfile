# shellcheck shell=bash
# shellcheck disable=SC1090,SC1091

export PATH="/usr/local/sbin:$PATH"

export HOMEBREW_AUTOREMOVE=1
export HOMEBREW_NO_ANALYTICS=1

# haskell ghcup
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# node n
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"

# ocaml opam
if [[ -o interactive ]]; then
  source "$HOME/.opam/opam-init/complete.zsh"
fi
source "$HOME/.opam/opam-init/variables.sh"

# python conda
source "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"

# rustup-init
export PATH="$HOME/.cargo/bin:$PATH"

# sdkman
export SDKMAN_DIR=/usr/local/opt/sdkman-cli/libexec
source "$SDKMAN_DIR/bin/sdkman-init.sh"
