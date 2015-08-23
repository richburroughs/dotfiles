source ~/github/zsh-users/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

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
setopt NO_HIST_BEEP
setopt HIST_NO_STORE

# More options
setopt NO_BEEP
setopt NO_FLOW_CONTROL

# Force Emacs mode
bindkey -e

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Turn off hosts completion for scp/ssh
zstyle ':completion:*' hosts off

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

