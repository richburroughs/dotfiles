# load zgen
source "${HOME}/github/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/garyblessington

    # save all to init script
    zgen save
fi

# Source profile and aliases
if [ -f ~/.profile ]; then
    source ~/.profile
fi
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# History options
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
unsetopt SHARE_HISTORY

# User configuration
export EDITOR='vim'

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# PATH for Homebrew
export PATH="/usr/local/bin:$PATH"

# Puppet/Beaker environment variables
export PUPPET_INSTALL_TYPE=agent
export PUPPET_VERSION=1.4.1
export BEAKER_destroy=no

# Python virtualenv setup
# source ~/venv/rich/bin/activate

# Turn off Google Analytics for Homebrew
HOMEBREW_NO_ANALYTICS=1

# The next line updates PATH for the Google Cloud SDK.
source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source ~/google-cloud-sdk/completion.zsh.inc

# Enable iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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

# Set GOPATH and PATH for Go
export GOPATH=$HOME/go
export PATH="$HOME/go/bin:$PATH"
