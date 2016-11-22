# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Supports oh-my-zsh plugins and the like
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "plugins/git",   from:oh-my-zsh

# Load oh-my-zsh libs
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh", nice:-1

# Load theme
zplug "themes/arrow",   from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load # --verbose
## Command history configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
# setopt share_history # share command history data

# Source profile and aliases
if [ -f ~/.profile ]; then
    source ~/.profile
fi
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Used to share this alias in .aliases but I want it set different for zsh
alias h="history 0"

# Function for searching history
histsearch() { fc -lm "$@" 1 }

# User configuration
export EDITOR='vim'

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# PATH for Homebrew
export PATH="/usr/local/bin:$PATH"

# Puppet/Beaker environment variables
export PUPPET_INSTALL_TYPE=agent
export PUPPET_VERSION=1.7.1
export BEAKER_destroy=no

# Turn off Google Analytics for Homebrew
HOMEBREW_NO_ANALYTICS=1

# The next line updates PATH for the Google Cloud SDK.
source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source ~/google-cloud-sdk/completion.zsh.inc

# Enable iTerm2 shell integration
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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
export PATH="/usr/local/go/bin:$HOME/go/bin:$PATH"

# Pyenv for managing Python versions and virtualenvs
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
