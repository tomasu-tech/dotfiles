# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#--------------------------------------------------------
# asdf
#--------------------------------------------------------
[ `uname -m` = 'arm64' ] && . /opt/homebrew/opt/asdf/libexec/asdf.sh

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
#--------------------------------------------------------
# path
#--------------------------------------------------------
# see zprofile.
export LC_ALL="ja_JP.UTF-8"
#--------------------------------------------------------
# functions
#--------------------------------------------------------
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
