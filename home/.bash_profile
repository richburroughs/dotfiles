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

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Path for Homebrew
export PATH="/usr/local/bin:$PATH"

# Set GROOVY_HOME
# export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="$HOME/.rbenv/bin:$PATH"
