# Enable tab completion
source ~/dotFiles/.udacity-terminal-config/git-completion.bash

# Change command prompt
source ~/dotFiles/.udacity-terminal-config/git-prompt.sh

# colors!
red="\[\033[38;5;203m\]"
blue="\[\033[38;05;38m\]"
green="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1


 export PS1="\u@💻👉 \W$blue\$(__git_ps1)$reset 👽 "
# for systems that don't support emoji in terminal
#export PS1="\u@\h \W$blue\$(__git_ps1)$reset :)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then  
	. $(brew --prefix)/etc/bash_completion
fi  
#EOL  
#brew sbin
export PATH="$PATH:/usr/local/sbin"

<<<<<<< HEAD
#make mv and cp always interactive and verbose
alias cp='cp -iv'
alias mv='mv -iv'
#navigate to dev directories
alias cdev="cd $HOME/dev"
#syntax highlighting for less
alias lessh='LESSOPEN="| src-hilite-lesspipe.sh %s" less -R -M '
#tmux custom split alias
alias tmuxIde='tmux new -s ide \; split-window -v -p 22 \; split-window -t 0 -h -p 70 \; select-pane -t 1 \; attach'
alias tide='tmuxIde'
alias tiCls='tmux kill-session -t ide'

#custom docker and docker-compose commands
COMPOSE_PATH="$HOME/dev/compose/docker-compose.yml"
function compose-up { docker-compose -f "$COMPOSE_PATH" up -d "$1"; }
function compose-down { docker-compose -f "$COMPOSE_PATH" stop "$1"; }
function dexec { docker exec -it "$1" bash; }

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

# import any .sh files from gitignored file
for file in ~/dotFiles/.secrets/*.sh
do
	if [ -f "$file" ]; then
		. $file
	fi
done

#python
export PATH="$PATH:~/Library/Python/3.6/bin"
alias py="python3"

# added by Anaconda3 5.2.0 installer
export PATH="$PATH:/anaconda3/bin"

#mysql
export PATH="$PATH:/usr/local/mysql/bin"

#openvpn
export PATH="$PATH:/usr/local/Cellar/openvpn/2.4.7_1/sbin/openvpn"

export PATH="$HOME/.cargo/bin:$PATH"
