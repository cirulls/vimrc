# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cirulls/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# enable powerline status bar
if [ -f /usr/local/lib/python3.5/dist-packages/powerline/bindings/zsh/powerline.zsh ]; then
	source /usr/local/lib/python3.5/dist-packages/powerline/bindings/zsh/powerline.zsh
fi
# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

