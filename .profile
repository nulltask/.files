export PATH=~/bin:$PATH
export PATH=./bin:$PATH
export PATH=~/.brew/bin:$PATH
export PATH=~/.brew/sbin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "/Users/nulltask/.rvm/scripts/rvm" ]] && source "/Users/nulltask/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GISTY_DIR=~/Documents/gist
export GISTY_SSL_CA=/System/Library/OpenSSL/cert.pem
export GISTY_SSL_VERIFY="none"

alias ls='ls --color'
alias ll='ls -laF --color'
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'

