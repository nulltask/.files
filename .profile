export PATH=~/bin:$PATH
export PATH=./bin:$PATH
export PATH=~/.brew/bin:$PATH
export PATH=~/.brew/sbin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export GISTY_DIR=~/Documents/gist
export GISTY_SSL_CA=/System/Library/OpenSSL/cert.pem
export GISTY_SSL_VERIFY="none"

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="$HOME/.brew/Cellar/ec2-api-tools/1.5.2.3/jars"

alias ls='ls --color'
alias ll='ls -laF --color'
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'

. `brew --prefix git`/etc/bash_completion.d/git-completion.bash
export PS1='\u@\h\[\033[33m\] \w$(__git_ps1) \n\[\033[31m\]♪\[\033[00m\] '
