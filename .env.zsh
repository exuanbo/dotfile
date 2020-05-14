# nvm
function load_nvm() {
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" ||   printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}
lazy_load load_nvm nvm node npm npx vue auto-changelog git-cz depcheck jsdoc ncu np stylelint typescript-language-server css-languageserver html-languageserver

# homebrew openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# rust
export PATH="/Users/xuanbo/.cargo/bin:$PATH"

# homebrew python
#export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# mono
export MONO_GAC_PREFIX="/usr/local"

# homebrew llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# haskell ghcup
export PATH="$HOME/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:$PATH"

# homebrew rbenv
function load_rbenv {
# for ruby-build
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"
# load rbenv automatically
eval "$(rbenv init -)"
}
lazy_load load_rbenv ruby gem

# iterm2
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# conda
function load_conda {
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
# <<< conda initialize <<<
conda activate myenv
}
lazy_load load_conda conda python python3 pip pip3

