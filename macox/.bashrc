# .bashrc
# System-wide .profile for sh(1)

if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && . /etc/bashrc
fi

###########################################################
# Colors & Theme
###########################################################
# export TERM="xterm-color"
# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced

############################################################
## User specific aliases and functions
############################################################
export BASE=/pang
export PROGRAM_BASE=$BASE/program
export SERVICE_BASE=$BASE/service
export SCRIPTS_BASE=$BASE/scripts
export CONF_BASE=$BASE/conf
export LOGS_BASE=$BASE/logs
export DATA_BASE=$BASE/data

###########################################################
# Alias
###########################################################
alias p='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias vi2='vi -O2 '
alias hc="history -c"
alias ls='ls -G'
alias l='ls -alF'
alias ll='ls -l'
alias la='ls -A'
alias c='clear'
alias sb="source ~/.bash_profile"
alias grep='grep --color=auto'

###########################################################
# Applicatino Optinos
###########################################################
#vm option
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'

# Execute Shells
# source /usr/local/Cellar/autojump/21.7.1/etc/autojump.sh

FILES=`find $CONF_BASE/env/bash_* -maxdepth 1 -type f -exec echo {} \;`
 
for FILE in $CONF_BASE/env/bash_*
do
  source $FILE
done
