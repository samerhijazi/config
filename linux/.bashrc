# Add following 2-lins in .bashrc from WSL-OS
#-----------------------------------------------------------------------------------
# export SH_SYS_NAME="ubuntu-fabric"
# source /mnt/c/system/config/linux/.bashrc

#-----------------------------------------------------------------------------------
# Enviruments
#export KUBECONFIG=$KUBECONFIG:/mnt/c/Users/samer/.kube/config
export KUBE_EDITOR="nano"
export do="--dry-run=client -o yaml"

#-----------------------------------------------------------------------------------
# Path
export WINPATH=/mnt/c/system/bin/linux
export GOPATH=/user/local/go
export JMETERPATH=/mnt/c/system/sdk/apache-jmeter-5.4.1
export JBANGPATH=$HOME/.jbang

export PATH=$PATH:$WINPATH:$GOPATH/bin:$JMETERPATH/bin:$JBANGPATH/bin

#-----------------------------------------------------------------------------------
# Prompt
PS1="\[\033[01;32m\]\u@$SH_SYS_NAME\[\033[00m\]:\[\033[01;34m\][\w]\[\033[00m\]\n\$ "
PROMPT_COMMAND=
echo -ne "\033]0;$SH_SYS_NAME\a"

#-----------------------------------------------------------------------------------
# Alias system
alias ..='cd ..'
alias cls=clear
alias ll='ls -alF --color=auto'
alias sysf='sudo apt update && sudo apt list --upgradable'
alias sysu='sudo apt upgrade -y && sudo apt autoremove -y'
#-----------------------------------------------------------------------------------
# Alias apps

alias mc='LANG=en_EN.UTF-8 mc'
alias exp='explorer.exe .'
alias d=docker 
alias dstop="docker stop $(docker ps -aq)"
alias drmc="docker rm $(docker ps -aq)"
alias drim="docker rmi $(docker images dev-* -aq)"
alias k=kubectl
alias q='quarkus'
alias v=vagrant
alias jm='jmeter'
alias j!=jbang

alias speedtest='speedtest --simple'

#-----------------------------------------------------------------------------------
# Functions
function kns() { 
	kubectl config set-context --current --namespace="$1"
	kubectl config view --minify | grep namespace:
}
#-----------------------------------------------------------------------------------
# Added

source <(kubectl completion bash)
complete -F __start_kubectl k


