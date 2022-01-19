# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep notify
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
typeset -U fpath
fpath=(~/.zfunc /usr/share/zsh/site-functions $fpath)
# The following lines were added by compinstall
zstyle :compinstall filename '/home/samm/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH=$PATH:$HOME/bin
[[ -f $HOME/bin/starship ]] || sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --bin-dir $HOME/bin
eval "$(starship init zsh)" 
