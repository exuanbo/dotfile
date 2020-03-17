export HOME="/Users/xuanbo"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

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

# doom emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# haskell ghcup
export PATH="$HOME/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:$PATH"
