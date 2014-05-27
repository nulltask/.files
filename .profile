export PATH=~/bin:$PATH
export PATH=./bin:$PATH
export PATH=~/.brew/bin:$PATH
export PATH=~/.brew/sbin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PYTHONPATH="/Users/nulltask/.brew/lib/python2.7/site-packages:$PYTHONPATH"

export GISTY_DIR=~/Documents/gist
export GISTY_SSL_CA=/System/Library/OpenSSL/cert.pem
export GISTY_SSL_VERIFY="none"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.6)"

if [ -d $HOME/.ec2 ]
then
  export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
  export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
  export EC2_HOME=`brew --prefix ec2-api-tools`/jars
fi

alias ls='ls --color'
alias ll='\ls -laF --color'
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'

. /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
. /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export PS1='\u@\h\[\033[33m\] \w$(__git_ps1) \n\[\033[31m\]♪\[\033[00m\] '

export RBENV_ROOT=/Users/nulltask/.brew/var/rbenv
eval "$(rbenv init -)"

test -s "$HOME/.secret" && source "$HOME/.secret"
