source ~/.zsh/prompt
#echo "Prompt loaded."
source ~/.zsh/completion
#echo "Completion loaded."
source ~/.zsh/keybinds
#echo "Keybinds loaded."
source ~/.zsh/aliases
#echo "Aliases loaded."
source ~/.zsh/startup
#echo "Startup loaded."

autoload -Uz compinit
compinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

source ~/.profile
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/bin/virtualenvwrapper.sh
