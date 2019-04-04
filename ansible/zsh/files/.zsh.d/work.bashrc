#!/bin/bash
ssh() {
    if [ -n "$TMUX"  ]; then
	HNAME="$(echo $* | cut -d '@' -f 2| cut -d . -f 1)"
        tmux rename-window "$HNAME"
	printf "\033]2;$HNAME\007"
        command ssh "$@"
        tmux set-window-option automatic-rename "on" 1>/dev/null
    else
        command ssh "$@"
    fi
}
notes() {
	if [ "$#" -ne 1 ]
	then
		ls -1 ~/notes/*
	else	
		vim ~/notes/$1
	fi
}
compdef '_files -W ~/notes/' notes
setpanelname() {
	printf "\033]2;$1\007"
}
alias prettyjson='python -m json.tool'
alias pw="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias gs="git stash"
alias gsa="git stash apply"
alias gc="git checkout"
alias gl='git log --graph --full-history --all --color --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'''
alias vi="vim"
alias services="systemctl | grep -i running | sed 's/\.service\|\.socket//g'"
alias calendar="vdirsyncer sync && khal interactive"
alias snooze='notify-send "DUNST_COMMAND_PAUSE"'
alias unsnooze='notify-send "DUNST_COMMAND_RESUME"'
alias ansible-vault='ansible-vault --vault-password-file=~/git/ansible/not_for_git/.vault_pass'
alias kpcli='sudo kpcli'
unalias rm

export PACKAGECLOUD_JAVA_LIBS_READ_TOKEN='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXxx'
export PATH="$PATH:/opt/bins"
export BROWSER="/usr/bin/vivaldi"
