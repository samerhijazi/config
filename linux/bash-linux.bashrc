# Add following 2-lins in .bashrc from WSL-OS
#-----------------------------------------------------------------------------------
# export SH_SYS_NAME="ubuntu-fabric"
# source /mnt/c/system/config/linux/.bashrc

#-----------------------------------------------------------------------------------
### Enviruments
#export KUBECONFIG=$KUBECONFIG:/mnt/c/Users/samer/.kube/config
export KUBE_EDITOR="nano"
export do="--dry-run=client -o yaml"

#-----------------------------------------------------------------------------------
### Path
export PATH_WIN=/mnt/c/system/bin/linux
export PATH_JMETER=/mnt/c/system/sdk/apache-jmeter-5.4.3
export GOPATH=/mnt/d/sandbox/go
export JBANGPATH=$HOME/.jbang
export PATH=$PATH:$PATH_WIN:$GOPATH/bin:$PATH_JMETER/bin:$JBANGPATH/bin

#-----------------------------------------------------------------------------------
## Prompt
export PS1='\[\033[32m\]\u@\h:\[\033[34m\][\w]\[\033[32m\]\[\033[0m\]\n$ '
#export PS1="\[\033[32m\]\u@\h:\[\033[34m\][\w]\[\033[32m\]$(__git_ps1)\[\033[0m\]\n$ "
#PROMPT_COMMAND='__git_ps1 "\[\033[32m\]\u@\h:\[\033[34m\][\w]\[\033[0m\]" "\n\$ "'
#echo -ne "\033]0;$SH_SYS_NAME\a"

export GIT_PS1_DESCRIBE_STYLE='describe'
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

#-----------------------------------------------------------------------------------
### Alias system
alias ..='cd ..'
alias cl=clear
alias ll='ls -alF --color=auto'
#-----------------------------------------------------------------------------------
alias sysf='sudo apt update && sudo apt list --upgradable'
alias sysu='sudo apt upgrade -y && sudo apt autoremove -y'
#-----------------------------------------------------------------------------------
alias sysf='sudo dnf makecache --refresh'
alias sysu='sudo dnf update --refresh'
#-----------------------------------------------------------------------------------

### Alias apps

alias mc='LANG=en_EN.UTF-8 mc'
alias exp='explorer.exe'
alias d=docker 
alias dstop="docker stop $(docker ps -aq)"
alias drmc="docker rm $(docker ps -aq)"
alias drim="docker rmi $(docker images dev-* -aq)"
alias k=kubectl
alias q='quarkus'
alias v='vagrant'
alias jm='jmeter'
alias j='jbang'
alias t='terraform'
alias an='ansible'
alias ap='ansible-playbook'
alias st='speedtest --simple'

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


