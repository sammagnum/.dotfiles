# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi


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
alias -s conf=vim
#source /home/samm/bin/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
export PATH=$PATH:$HOME/bin

(which starship > /dev/null 2>&1 || mkdir -p $HOME/bin && sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --bin-dir $HOME/bin) && eval "$(starship init zsh)" 

alias zyp=zypper
alias sudo="sudo "
