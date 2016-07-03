export PATH=~/bin:$PATH
export PATH=./bin:$PATH
export PATH=~/.brew/bin:$PATH
export PATH=~/.brew/sbin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH

export ANDROID_HOME=/Users/nulltask/.brew/opt/android-sdk
export PYTHONPATH="/Users/nulltask/.brew/lib/python2.7/site-packages:$PYTHONPATH"

export GISTY_DIR=~/Documents/gist
export GISTY_SSL_CA=/System/Library/OpenSSL/cert.pem
export GISTY_SSL_VERIFY="none"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

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

function __show_status() {
  local status=$(echo ${PIPESTATUS[@]})
  local SETCOLOR_SUCCESS="echo -en \\033[0;32m"
  local SETCOLOR_FAILURE="echo -en \\033[0;31m"
  local SETCOLOR_WARNING="echo -en \\033[0;33m"
  local SETCOLOR_NORMAL="echo -en \\033[0;39m"

  local SETCOLOR s
  for s in ${status}
  do
      if [ ${s} -gt 100 ]; then
          SETCOLOR=${SETCOLOR_FAILURE}
      elif [ ${s} -gt 0 ]; then
          SETCOLOR=${SETCOLOR_WARNING}
      else
          SETCOLOR=${SETCOLOR_SUCCESS}
      fi
  done
  ${SETCOLOR}
  echo -e "\n (exit ${status// /|})\n"
  ${SETCOLOR_NORMAL}
}
PROMPT_COMMAND=' __show_status;'${PROMPT_COMMAND//__show_status;/}

export PS1='\[\033[32m\] \w$(__git_ps1)\n\[\033[31m\] λ\[\033[00m\] '

export RBENV_ROOT=/Users/nulltask/.brew/var/rbenv
eval "$(rbenv init -)"

test -s "$HOME/.secret" && source "$HOME/.secret"

eval "$(direnv hook bash)"

cd () {
  builtin cd $@ && ls
}

archey
