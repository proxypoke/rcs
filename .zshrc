# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _match _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' max-errors 0 numeric
zstyle :compinstall filename '/home/slowpoke/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# PROMPT
# Lines are diffrently colored depending on the user
# Regular user --> blue
# root ----------> red
if [ `whoami` = 'root' ]; then
	PROMPT=$'%{\e[0;31m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;31m%}%B]%b%{\e[0m%} - %b%{\e[0;31m%}%B[%b%{\e[1;37m%}%~%{\e[0;31m%}%B]%b%{\e[0m%} 
%{\e[0;31m%}%B└─%B[%{\e[1;35m%}$%{\e[0;31m%}%B]>%{\e[0m%}%b '
	PS2=$'     \e[0;31m%}%B>%{\e[0m%}%b '
else
	PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} 
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]>%{\e[0m%}%b '
	PS2=$'     \e[0;34m%}%B>%{\e[0m%}%b '
fi


# Keybinds

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# reverse history search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# ALIASES
#general
alias o='xdg-open'
alias v='vim -p'
alias g='git'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'

#c aliases
alias cc="gcc -Wall --std=c99"

#python aliases
alias py='python2.7'
alias bpy='bpython2'

alias py2='python2.7'
alias bpy2='bpython2'

alias py3='python3'
alias bpy3='bpython'

#ssh
event_horizon="192.168.2.111"
gravity="192.168.2.112"
singularity="192.168.2.113"

#a friendly reminder
echo "Semper vigilo. Bona fides. Attere dominatum."
