alias ls='ls -FGh'

alias ll='ls -l'
alias la='ls -A'
alias l='ll'
alias tree='tree -F'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'

alias ..='cd ..'
alias cd..='cd ..'

alias h="history | tail -28"
alias hist="history"

alias bash="SHELL=/usr/local/bin/bash /usr/local/bin/bash --login"
alias diff="colordiff"
alias ldd="otool -L"
alias tc="tmux -CC"

alias sl='sl -e'
alias LS='sl'
alias ls-='sl'

vman() {
    PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
           vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
           -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
           -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\"" man $*
}
