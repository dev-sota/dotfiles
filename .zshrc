autoload -Uz compinit && compinit

bindkey -e

alias ls='ls -G -F'
alias ll='ls -l'
alias la='ls -la'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias sed='gsed'
alias d='docker'
alias dc='docker compose'
alias tf='terraform'
alias tg='terragrunt'

setopt auto_cd
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks

# pure
fpath+=$HOME/.zsh/pure
autoload -Uz promptinit; promptinit
zstyle :prompt:pure:path color cyan
zstyle ':prompt:pure:prompt:*' color green
prompt pure

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# os
export LANG=ja_JP.UTF-8
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
# export PS1="%1~ %# "

# openssl@1.1
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

# Go
export GO111MODULE=on
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init - zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
