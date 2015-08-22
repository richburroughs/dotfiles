source ~/.git-completion.bash

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export PS1="[\u: \W]\$ "

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

export PATH="/usr/local/bin:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
