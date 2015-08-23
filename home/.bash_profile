### Source .profile and .bashrc if they exist
if [ -r ~/.profile ]
  then . ~/.profile
fi
if [ -r ~/.bashrc ]
  then . ~/.bashrc
fi
### Use Solarized colors for ls output on OS X
OS=`uname -a | cut -d" " -f 1`
if [ ${OS} = "Darwin" ]
  then
    export CLICOLOR=1
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi
### Other environment variables
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}\007"'
HISTFILESIZE=5000

# Set GROOVY_HOME
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
