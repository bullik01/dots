#!/usr/bin/env zsh

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="robbyrussell"
# ZSH_THEME="oxide"
# ZSH_THEME="refined"
# ZSH_THEME="dracula"
DISABLE_AUTO_UPDATE="true"
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  web-search
)
export PATH=$HOME/.bin:$HOME/.bin/popup:/usr/local/bin:$PATH
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# AUTOSUGGESTION_HIGHLIGHT_COLOR="fg=3"

# if [[ $TERM == xterm-termite ]]; then
# 	. /etc/profile.d/vte.sh
# 	__vte_osc7
# fi

# if [[ $TILIX_ID ]]; then
# 	source /etc/profile.d/vte.sh
# fi

export TERM="xterm-256color"
# export TERM="rxvt-unicode-256color"
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'subl3'; else echo 'nano'; fi)"
export BROWSER="chromium"
export SSH_KEY_PATH="~/.ssh/dsa_id"

if [ -f ~/.alias_zsh ]; then
  . ~/.alias_zsh
fi
