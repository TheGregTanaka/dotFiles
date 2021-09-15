# Enable tab completion
fpath=(~/.zsh $fpath)
#source ~/dotFiles/gitscripts/git-completion.zsh

# Change command prompt in git repos
source ~/dotFiles/gitscripts/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

autoload -U colors && colors
#export PS1="%n@💻👉 %1~$blue\$(__git_ps1)$reset 👽 "
setopt PROMPT_SUBST ; PS1='%n@💻👉 %1~%{$fg[cyan]%}$(__git_ps1 " (%s)") %{$reset_color%}👽 '
# for systems that don't support emoji in terminal
#export PS1="\u@\h \W$blue\$(__git_ps1)$reset :)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then  
        . $(brew --prefix)/etc/bash_completion
fi  
#EOL  
#brew sbin
export PATH="$PATH:/usr/local/sbin"

#use brew vim
#alias vim='/usr/local/Cellar/vim/8.2.1950/bin/vim'
#you'd think it stands for 'grep explain'
#but it actually stands for 'greg explain'
function grexplain { grep "$1" ~/dotFiles/zprofile; }
#make mv and cp always interactive and verbose
alias cp='cp -iv'
alias mv='mv -iv'
#default path option
alias mkdir='mkdir -p'
#navigate to dev directories
alias cdot="cd $HOME/dotFiles"
alias cdev="cd $HOME/dev"
alias cdcd="cd $HOME/OneDrive/college/2021-2022fall/"
#syntax highlighting for less
alias lessh='LESSOPEN="| src-hilite-lesspipe.sh %s" less -R -M '
#tmux custom split alias
#alias tmuxIde='tmux -2 new -s ide \; split-window -v -p 22 \; split-window -t 0 -h -p 70 \; select-pane -t 1 \; attach'
alias tmuxIde='tmux -2 new -s ide \; split-window -v -p 22 \; select-pane -t 0 \; attach'
alias tide='tmuxIde'
alias tiCls='tmux kill-session -t ide'
#because I'm super lazy
alias mb="make build"
alias md="make testbuild"
alias mgdb="make debug"
alias jn="jupyter-notebook"

#custom docker and docker-compose commands
COMPOSE_PATH="$HOME/dev/compose/docker-compose.yml"
function compose-up { docker-compose -f "$COMPOSE_PATH" up -d "$1"; }
function compose-down { docker-compose -f "$COMPOSE_PATH" stop "$1"; }
function dexec { docker exec -it "$1" bash; }

#cmake
PATH="/Applications/CMake.app/Contents/bin":"$PATH"
#for C++
alias gp="g++ -std=c++11"
# get makefile from dotFiles
alias getMake="cp ~/dotFiles/cppMakefile ./makefile"
alias mm="getMake"
alias mmm="getMake && make"

#for Golang Programming
export GOPATH=$HOME/dev/go
export PATH="$PATH:$GOPATH"
export PATH="$PATH:$GOPATH/bin"
#for GO Engine
export PATH="$PATH:/usr/local/go_appengine"

#for PHP
export PATH="$PATH:/usr/bin/php"
export PATH="$PATH:~/.composer/vendor/bin"

#for java
export JAVA_HOME=`/usr/libexec/java_home`

#for node, home config
# export PATH=$PATH:/usr/local/bin
#VERSION=v9.11.2
#DISTRO=linux-x64
#export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
#for node and npm, work config
export PATH="$PATH:/usr/local/bin/node:/usr/local/bin/npm"

#for Maven
export PATH="$PATH:/opt/apache-maven-3.5.3/bin"

#for tslint
export PATH="$PATH:/usr/bin/tslint"

#python
export PATH="$PATH:/usr/local/bin/python3"
alias py="python3"

# added by Anaconda3 5.2.0 installer
export PATH="$PATH:/anaconda3/bin"

#mysql
export PATH="/usr/local/mysql/bin/:$PATH"

#openvpn
export PATH="$PATH:/usr/local/Cellar/openvpn/2.4.7_1/sbin/openvpn"

export PATH="$HOME/.cargo/bin:$PATH"

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export PATH="$PATH:/usr/local/lib"

#flutter
export PATH="$PATH:$HOME/dev/flutter/bin"

# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gtanaka/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gtanaka/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gtanaka/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gtanaka/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

