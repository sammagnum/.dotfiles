# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep notify
bindkey '^R' history-incremental-search-backward

# End of lines configured by zsh-newuser-install
fpath=(~/.zfunc /usr/share/zsh/site-functions $fpath)
typeset -U fpath
autoload -Uz team
# The following lines were added by compinstall
zstyle :compinstall filename '/home/samm/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
mkdir -p .bin
export PATH=$PATH:$HOME/.bin:.
[[ -f $HOME/.bin/starship ]] || sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --bin-dir $HOME/.bin
eval "$(starship init zsh)" 
if [[ -d $HOME/bin/fzf ]] 
then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/bin/.fzf && ~/bin/.fzf/install
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"
export WECHALLUSER="smangum"
export WECHALLTOKEN="118BF-49085-22A54-03B6F-D9122-68352"


if [ $HOST = "ibm" ]
then
  source /usr/local/ibmcloud/autocomplete/zsh_autocomplete
fi

alias ls=lsd --color
alias la=lsd -A --color
alias vim=nvim
alias vi=nvim
setopt interactivecomments
$(which neofetch) --colors 4 6 1 2 8 6 --ascii_colors 19 1 18 4 17 6
#source /usr/local/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
export CT="Americas/Chicago"
export EET="Egypt/Cairo"
export IST="Asia/Kolkata"
export FZF_CTRL_R_OPTS='--sort'
export LC_CTYPE='en_US.UTF-8'
