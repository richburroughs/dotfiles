# Settings shared by Bash and Zsh

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

# GPGTools Path
export PATH="/usr/local/MacGPG2/bin:$PATH"

# Set GOPATH and PATH for Go
export GOPATH=$HOME/go
export PATH="/usr/local/go/bin:$HOME/go/bin:$PATH"

# Pyenv for managing Python versions and virtualenvs
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
