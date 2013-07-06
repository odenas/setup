if [ -z "$VISUAL" -a -z "$EDITOR" ]; then
	set -o vi
fi

export PATH=$PATH:~/.local/bin:~/bin:~/bin/bedtools
PATH=$PATH:/aut/proj/bx/sw/arch/Linux_x86_64/ucsc\-genome\-utils\-246/bin/:~/.local/bin:~/bin/x86_64
export EDITOR=vi
set -o vi

#case $LOGNAME in			# include command number in prompt
#root)	PS1="!# " ;;
#*)	PS1="${LOGNAME}@$(hostname):$ " ;;
#esac
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[34m\]\W\[\033[00m\]\$ '
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\W\$ '
export PS1

alias s="cd .."
alias ls="ls --color -F"
alias rm="rm -i"
alias cdw="cd /aut/proj/odenas"

ulimit -f unlimited # no core dumps for big files

### Below added by install script ###
export ARCHHOME=/home/odenas/arch/Linux-x86_64
export PYTHONPATH=/home/odenas/arch/Linux-x86_64/lib/python2.7:$PYTHONPATH
export PATH=/home/odenas/arch/Linux-x86_64/bin:$PATH
### Above added by install script ###

export SGE_ROOT=/var/lib/gridengine
export HDF5_DIR=/usr

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
