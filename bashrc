export DOTFILES=~/dev/tools/dotfiles
source $DOTFILES/bashrc.orig
source $DOTFILES/alias.bash
source $DOTFILES/tools.bash
source $DOTFILES/bookmarks

export OTAC_ENV=dev
export CREDHANDLER_ENV=dev
export BROADWAY_ENV=dev
export JAVA_OPTS=-XX:MaxPermSize=512m
export VARNISH_HOME=/home/ee/projects/o2/presentation/api-gateway/trunk/varnish
export APIGATEWAY_ENV=dev


export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\] $(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '

git() {
    if [ $1 = "diff" -o $1 = "show" -o $1 = "log" ]; then
        CMD=$1;
        shift;
        command git $CMD --color "$@";
    elif [ $1 = "blame" ]; then
        command tig "$@";
    else
        command git "$@";
    fi;
}

function odl() { ssh "$@" 'telnet 172.31.211.4 259'; }
