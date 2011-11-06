# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
#zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install

# Keybinds (copied from Arch wiki)
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
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey "\e[F" end-of-line


# Set a two line colored prompt
# Originally by ixiongchiamiov on r/commandline.
export PROMPT=$'%{\e[0;34m%}%B\u250c\u2500[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B\u2514\u2500%B[%{\e[1;35m%}$%{\e[0;34m%}%B]>%{\e[0m%}%b '

export PS2=$'     \e[0;34m%}%B>%{\e[0m%}%b '

# Aliases
# tuxsay
alias tuxsay='cowsay -f tux'

#dmenu
alias dmenu='dmenu_run -nb black -nf green -sb green -sf black'

#python
alias py='python2.7'
alias bpy='bpython2'
alias easy-install='easy_install-2.7'
alias pytest='for pyfile in ./*py ; do python $pyfile ; done'

#ls
alias ls='ls --color=auto -F'
alias la='ls -a --color=auto -F'
alias ll='ls -l --color=auto -F'


