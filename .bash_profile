if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

####
## SET UP JAVA
####
JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home'
export PATH=$PATH:$JAVA_HOME


####
## SET UP MONGODB
####
MONGO_PATH=/usr/local/Cellar/mongodb/3.0.6/bin/mongod
export PATH=$PATH:$MONGO_PATH

alias mongod='mongod --config /usr/local/etc/mongod.conf'

####
## SET UP AWS COMMANDLINE
####
AWS_PATH=/usr/local/bin/aws
export PATH=$PATH:$AWS_PATH

####
## SET UP MAVEN
####

####
## SET UP MVIM
####
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'


####
## SET UP GIT
####
. ~/.git_svn_bash_prompt

## AUTOCOMPLETE
#GIT AUTOCOMPLETE
if [ -f /usr/local/share/doc/git-core/contrib/completion/git-completion.bash ]; then
    . /usr/local/share/doc/git-core/contrib/completion/git-completion.bash
fi
if [ -f /opt/local/share/doc/git-core/contrib/completion/git-prompt.sh ]; then
    . /opt/local/share/doc/git-core/contrib/completion/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# SET UP MACVIM

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
