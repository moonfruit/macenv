#!/usr/bin/zsh

# git
alias gau='git add -u'
compdef _git gau=git-add

# autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# proxy
compdef _precommand proxy
