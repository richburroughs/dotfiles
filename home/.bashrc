source ~/.git-completion.bash

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export PS1="\W \$ "

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

alias h='history'

# GPGTools Path
export PATH="/usr/local/MacGPG2/bin:$PATH"
 
# GPG Agent - For use with SSH
#
if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  if [ -S "$SSH_AUTH_SOCK" ]; then
    export GPG_AGENT_INFO SSH_AUTH_SOCK SSH_AGENT_PID
  else
    eval $(gpg-agent --daemon --enable-ssh-support)
  fi
else
  eval $(gpg-agent --daemon --enable-ssh-support)
fi
export GPG_TTY=$(tty)
