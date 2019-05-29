# Enable tab completion
source ~/devConfig/.udacity-terminal-config/git-completion.bash

# Change command prompt
source ~/devConfig/.udacity-terminal-config/git-prompt.sh

# colors!
red="\[\033[38;5;203m\]"
blue="\[\033[38;05;38m\]"
green="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1


 export PS1="\u@💻👉 \W$blue\$(__git_ps1)$reset 👽 "
#export PS1="\u@\h \W$blue\$(__git_ps1)$reset :)"
#cat >> ~/.bashrc <<EOL  
if [ -f $(brew --prefix)/etc/bash_completion ]; then  
	. $(brew --prefix)/etc/bash_completion
fi  
#EOL  

#syntax highlighting for less
alias lessh='LESSOPEN="| src-hilite-lesspipe.sh %s" less -R -M '
#tmux custom split alias
alias tmuxIde='tmux new -s ide \; split-window -v -p 22 \; split-window -t 0 -h -p 70 \; select-pane -t 1 \; attach'
#alias tide='tmux new -s ide \; split-window -v -p 22 \; split-window -t 0 -h -p 70 \; select-pane -t 1 \; attach'
alias tide='tmuxIde'
alias tiCls='tmux kill-session -t ide'

#for Golang Programming
export GOROOT="/usr/local/go"
export GOPATH="$HOME/Projects/golang"
export GOBIN="$GOPATH/bin"
export PATH=$PATH:$GOBIN:~/Library/Python/3.6/bin

#for PHP
export PATH=$PATH:/usr/bin/php
#for GO Engine
export PATH=$PATH:usr/local/go_appengine

export PATH=$PATH:~/.composer/vendor/bin

#for java
export JAVA_HOME=`/usr/libexec/java_home`

#for node
# export PATH=$PATH:/usr/local/bin
#VERSION=v9.11.2
#DISTRO=linux-x64
#export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
#for node and npm, work
export PATH=$PATH:/usr/local/bin/node:/usr/local/bin/npm

#for Maven
export PATH=$PATH:/opt/apache-maven-3.5.3/bin

#for tslint
export PATH=$PATH:/usr/bin/tslint

# import any .sh files from gitignored file
secrets="~/devConfig/.secrets"
for file in "$secrets"/*.sh
do
	load=$file
	if [ -f "$load" ];
	then
		. $load
	fi
done

#python
alias py="python3"

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"

#mysql
export PATH=/usr/local/mysql/bin:$PATH 
