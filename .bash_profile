# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# homebrew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end


# ls
alias la='ls -laph'
alias lf='ls -lphf'
alias ll='ls -lph'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '


# git
alias gco='git co'
alias gci='git ci'
alias grb='git rb'
alias gst='git st'
alias gbr='git br'
alias gdf='git df'

if [ -f ~/.django_bash_completion ]; then
  . ~/.django_bash_completion
fi
