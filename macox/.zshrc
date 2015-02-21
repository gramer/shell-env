#!/bin/zsh
###########################################################
# git ignore
###########################################################

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

############################################################
## Colors & Theme
############################################################
#export TERM="xterm-color"
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

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
alias sb="source ~/.zshrc"
alias grep='grep --color=auto'
alias tf='tail -f $LOGS_BASE/catalina_logs/catalina.out'
alias t='tree'
alias lg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME=”robbyrussell”
ZSH_THEME="agnoster"
#ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(git laravel4)
source $ZSH/oh-my-zsh.sh

# User configuration
DEFAULT_USER="coupang"

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
export PATH="/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin:$SCRIPTS_BASE:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###########################################################
# Applicatino Optinos
###########################################################
#inint maven
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'
export GRADLE_OPTS='-Xmx1024m -XX:MaxPermSize=256m'

# Execute Shells
source /usr/local/Cellar/autojump/21.7.1/etc/autojump.sh

###########################################################
# Enviroment Application Optinos
###########################################################
for FILE ($CONF_BASE/env/bash_*) {
  source $FILE
}

###########################################################
# Powershell 
###########################################################
if [[ -r /usr/local/Cellar/python/2.7.8/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/Cellar/python/2.7.8/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

###########################################################
# git ignore
###########################################################
#function gi() { curl -s http://www.gitignore.io/api/ ;}


###########################################################
# python environment
###########################################################
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

