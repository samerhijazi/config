# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PS1="\[\033[01;34m\][\w]\[\033[00m\]\$ "

PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007";history -a'

if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi
shopt -s histappend

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -alF'
alias la='ls -A'
alias ll='ls -al'
alias dir='ls -alh --color=auto'
alias vi='vim'
alias grep='grep --color=auto'
alias cls='clear'
alias md='mkdir -p'
alias ftp='/usr/bin/ftp -p'
alias mc='LANG=en_EN.UTF-8 mc'

export LANGUAGE=en_EN:en
export EDITOR=/usr/bin/vim
export SHELL="/bin/bash"
unset MAILCHECK
unset MAIL

cd /www/htdocs/${USER##*\-}

if [ -f /etc/motd ];then
        cat /etc/motd | sed "s#LOGIN#${USER##*\-}#g"
fi

if [ -f /www/htdocs/${USER##*\-}/.user_bashrc ];then
	source /www/htdocs/${USER##*\-}/.user_bashrc
fi