# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export TERM=xterm-256color

# alias vimx if installed (system clipboard support)
if [ -e /usr/bin/vimx ]; then alias vim='/usr/bin/vimx'; fi

# solarized dircolors
if [ -f ~/.dircolors ]
    then eval `dircolors ~/.dircolors`
fi

# Bash prompt
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
Bold="\[$(tput bold)\]"
Reset="\[$(tput sgr0)\]"
BG="\[\033[48;5;12m\]"
White="\[\033[0;35\]"
Grey1="\[\033[38;5;234m\]"
Grey2="\[\033[38;5;250m\]"


if tput setaf 1 &> /dev/null; then
	tput sgr0; # reset colors
	bold=$(tput bold);
	reset=$(tput sgr0);
	# Solarized colors, taken from http://git.io/solarized-colors.
	black=$(tput setaf 0);
	blue=$(tput setaf 33);
	cyan=$(tput setaf 37);
	green=$(tput setaf 64);
	orange=$(tput setaf 166);
	purple=$(tput setaf 125);
	red=$(tput setaf 124);
	violet=$(tput setaf 61);
	white=$(tput setaf 15);
	yellow=$(tput setaf 136);
else
	bold='';
	reset="\e[0m";
	black="\e[1;30m";
	blue="\e[1;34m";
	cyan="\e[1;36m";
	green="\e[1;32m";
	orange="\e[1;33m";
	purple="\e[1;35m";
	red="\e[1;31m";
	violet="\e[1;35m";
	white="\e[1;37m";
	yellow="\e[1;33m";
fi;

#Block style
#PS1="$BG\[${bold}\]\[${black}\]\u\[${reset}\]$BG\[${black}\]@\[${black}\]\h:" # user:host
#PS1+="\[${bold}\][\w]" # [directory]
#PS1+="\[${reset}\] \[${white}\]\$\[${reset}\] "; # `$` (and reset color)

PS1="\[${bold}\]\[${white}\]\u\[${reset}\]\[${white}\]@\[${white}\]\h:" # user:host
PS1+="\[${bold}\][\w]" # [directory]
PS1+="\[${reset}\] \[${white}\]\$\[${reset}\] "; # `$` (and reset color)
export PS1;

# Continuous prompt
export PS2="$BG\[${white}\]→ $Reset"
