# load zgen
source "${HOME}/github/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
#   zgen oh-my-zsh plugins/git
#   zgen oh-my-zsh plugins/sudo
#   zgen oh-my-zsh plugins/command-not-found
#   zgen load zsh-users/zsh-syntax-highlighting

    # bulk load
#   zgen loadall <<EOPLUGINS
#       zsh-users/zsh-history-substring-search
#       /path/to/local/plugin
#EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
#   zgen oh-my-zsh themes/awesomepanda
    zgen oh-my-zsh themes/garyblessington

    # save all to init script
    zgen save
fi

# User configuration
export EDITOR='vim'

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Source profile and aliases

if [ -f ~/.profile ]; then
    source ~/.profile
fi
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# History options
setopt INC_APPEND_HISTORY
# setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
#setopt NO_HIST_BEEP
#setopt HIST_NO_STORE

# More options
#setopt NO_BEEP
#setopt NO_FLOW_CONTROL

# Force Emacs mode
#bindkey -e

#unalias run-help
#autoload run-help
#HELPDIR=/usr/local/share/zsh/help

# Turn off hosts completion for scp/ssh
#zstyle ':completion:*' hosts off

# The next line updates PATH for the Google Cloud SDK.
# source ~/google-cloud-sdk/path.zsh.inc

# The next line enables bash completion for gcloud.
# source ~/google-cloud-sdk/completion.zsh.inc

# Set GROOVY_HOME
# export GROOVY_HOME=/usr/local/opt/groovy/libexec

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# PATH for Homebrew
export PATH="/usr/local/bin:$PATH"

# Puppet/Beaker environment variables
export PUPPET_INSTALL_TYPE=agent
export PUPPET_VERSION=1.2.2
export BEAKER_destroy=no

# Python virtualenv setup
export WORKON_HOME=~/pythonenvs
export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
export PATH=$PATH:/Users/richardb/Library/Python/3.5/bin
source /usr/local/bin/virtualenvwrapper.sh
