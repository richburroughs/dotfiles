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

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/rich.burroughs/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/rich.burroughs/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/rich.burroughs/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/rich.burroughs/google-cloud-sdk/completion.bash.inc'
fi

