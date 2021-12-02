# Add following 2-lins in .bashrc from WSL-OS
#-----------------------------------------------------------------------------------
# export SH_SYS_NAME="ubuntu-fabric"
# source /mnt/c/sys-config/linux/.bashrc

#-----------------------------------------------------------------------------------
# Path
export PATH=$PATH:/mnt/c/sys-bin/linux

#-----------------------------------------------------------------------------------
# Prompt
PS1="\[\033[01;32m\]\u@$SH_SYS_NAME\[\033[00m\]:\[\033[01;34m\][\w]\[\033[00m\]\n\$ "
PROMPT_COMMAND=
echo -ne "\033]0;$SH_SYS_NAME\a"

#-----------------------------------------------------------------------------------
# Alias
alias ..='cd ..'
alias cls=clear
alias ll='ls -alF --color=auto'
alias mc='LANG=en_EN.UTF-8 mc'
alias exp='explorer.exe .'

#-----------------------------------------------------------------------------------
# Sandbox
alias sb="cd /mnt/d/sandbox/study/k8s-admin/sandbox"

#-----------------------------------------------------------------------------------
# Docker & Vagrant
#alias d=docker 
#alias dc=docker-compose
#alias ds="docker stop $(docker ps -aq)"
#alias dr="docker rm $(docker ps -aq)"
#alias dri="docker rmi $(docker images dev-* -aq)"
alias v=vagrant

#---------------------------------------------------------------
# Kubernetes
#export KUBECONFIG=$KUBECONFIG:/mnt/c/Users/samer/.kube/config
export KUBE_EDITOR="nano"
export do="--dry-run=client -o yaml"
alias k=kubectl
source <(kubectl completion bash)
complete -F __start_kubectl k

function kns() { 
	kubectl config set-context --current --namespace="$1"
	kubectl config view --minify | grep namespace:
}

#---------------------------------------------------------------
# Hyperlager Fabric

#---------------------------------------------------------------
# go
export PATH=$PATH:/usr/local/go/bin:/mnt/d/sandbox/bin
export GOPATH=/mnt/c/go
export PATH=$PATH:$GOPATH/bin
