# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

###################################################################
# MY GITHUB SETTINGS (https://github.com/arentil/my-linux-config) #
###################################################################

source ~/.git-prompt.sh

# BASH PS1 FOR REMOTE SERVER
#export PS1='\[\033[38;5;14m\][\[\]\[\033[38;5;9m\]\D{%T}\[\033[38;5;14m\]][\[\033[38;5;15m\] \[\033[38;5;127m\]\u\[\033[38;5;14m\]@\033[38;5;11m\]\H\[\033[38;5;14m\]: \[\033[01;34m\]\w\[\033[38;5;15m\]\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[0m\] \[\033[38;5;14m\]]\[\033[38;5;15m\]\n\[\033[38;5;14m\] $ \[\033[38;5;15m\]'

# BASH PS1 FOR LOCAL VM
export PS1='\[\033[38;5;14m\][\[\]\[\033[38;5;9m\]\D{%T}\[\033[38;5;14m\]][\[\033[38;5;15m\] \[\033[38;5;15m\]\[\e[1;32m\]\u\[\033[38;5;14m\]@\033[38;5;11m\]\H\[\033[38;5;14m\]: \[\033[01;34m\]\w\[\033[38;5;15m\]\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[0m\] \[\033[38;5;14m\]]\[\033[38;5;15m\]\n\[\033[38;5;14m\] $ \[\033[38;5;15m\]'

###################################################################
===================================================================
###################################################################
