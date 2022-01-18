autoload -Uz compinit; compinit

# pure
fpath+=$HOME/.zsh/pure
autoload -Uz promptinit; promptinit
zstyle :prompt:pure:path color cyan
zstyle ':prompt:pure:prompt:*' color green
prompt pure

# gnu-sed
alias sed='gsed'

# OS
setopt hist_ignore_dups
alias ls='ls -G -F'
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# openssl@3
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

# # openssl@1.1
# export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

# Go
export GO111MODULE=on
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init - zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
