#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#--------------------------------------------------------
# zinit
#--------------------------------------------------------
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
# 補完
zinit light zsh-users/zsh-autosuggestions
# シンタックスハイライト
zinit light zdharma-continuum/fast-syntax-highlighting
# Ctrl+r でコマンド履歴を検索
zinit light zdharma-continuum/history-search-multi-word
# Customize to your needs...
#--------------------------------------------------------
# asdf(arm64) / anyenv(x86_64)
#--------------------------------------------------------
[ `uname -m` = 'arm64' ] && . /opt/homebrew/opt/asdf/libexec/asdf.sh
[ `uname -m` = 'x86_64' ] && eval "$(anyenv init -)"

#--------------------------------------------------------
# jump
#--------------------------------------------------------
eval "$(jump shell)"

#--------------------------------------------------------
# alias
#--------------------------------------------------------
alias la="ls -aFG"
alias ls="ls -FG"
alias ll="ls -alFG"
alias dc="docker-compose"
alias do="docker"
alias brewx="arch -x86_64 /usr/local/bin/brew"
#--------------------------------------------------------
# path
#--------------------------------------------------------
# see zprofile.

#--------------------------------------------------------
# functions
#--------------------------------------------------------
function md (){
  open -a Typora $1
}

# docker hubのイメージタグを検索する関数
function docker-tags {
  curl -s https://registry.hub.docker.com/v1/repositories/$1/tags | jq -r '.[].name'
}
