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
source /usr/local/Cellar/autojump/21.7.1/etc/autojump.sh

# 개행문자 처리 후 적용
for FILE ($CONF_BASE/env/env_*) {
  source $FILE
}
