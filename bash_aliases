
gvim () { command gvim --remote-tab-silent "$@" || command gvim "$@"; }

alias gcl='git clone'
alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gss='git status -s'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gl='git pull'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# vim:ft=sh
