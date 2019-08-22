# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# export EDITOR=nano
export EDITOR=vim

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# To create or update a symlink on shell:
# ln -sf /path/to/file /path/to/symlink
# ex: alias alias_name="command_to_run"

alias pycharm='bash /opt/pycharm/bin/pycharm.sh'
alias d='cd ~/Downloads && clear'
alias rm='rm -R'

# functions
vcurl(){
	curl $1 | jq
}

vhist(){
	history | grep $1
}

gitc(){
	git commit -m ${1:-'Committed whithout description'}
}
