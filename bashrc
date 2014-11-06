# Use bash-completion, if available
if [ -f ~/.bash_completion_hg ]; then
  . ~/.bash_completion_hg
fi

if [ -f ~/.bash_completion_git.sh ]; then
  . ~/.bash_completion_git.sh
fi

if [ -f ~/.django_bash_completion ]; then
  . ~/.django_bash_completion
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip(){
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
