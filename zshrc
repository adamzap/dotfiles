setopt auto_cd
setopt correct
setopt prompt_subst
setopt transient_rprompt
setopt rmstarsilent
setopt notify
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

alias ls='ls -G'
alias ll='ls -l'
alias d='cd ~/Desktop'
alias p='cd ~/Projects'
alias dh='ssh adamzaps@adamzap.com'
alias news='canto-fetch;canto'
alias crawl='xterm -fa Monaco -e telnet crawl.akrasiac.org &'
alias clean_svn='rm -rf `find . -type d -name .svn`'
alias rip_psx='sudo disktool -u disk1s0;sleep 4;sudo cdrdao read-cd --read-raw --datafile game.bin --device IODVDServices --driver generic-mmc game.toc;drutil eject'
alias tmux='tmux -2'

bindkey "^r" history-incremental-search-backward

export EDITOR=vim
export PATH=/opt/local/bin:/opt/local/sbin:~/.local/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"

# tab completion for python files
compctl -g '*.py' + -g '*(-/)' python

# git stuff
GIT_PROMPT_PREFIX='('
GIT_PROMPT_SUFFIX=')'
GIT_PROMPT_DIRTY=' +'
GIT_PROMPT_CLEAN=' ='

function git_prompt_info () {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "○ $GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$GIT_PROMPT_SUFFIX"
}

function parse_git_dirty () {
  if [[ $((git status 2> /dev/null) | tail -n1) != "nothing to commit (working directory clean)" ]]; then
    echo "$GIT_PROMPT_DIRTY"
  else
    echo "$GIT_PROMPT_CLEAN"
  fi
}

PROMPT=$(echo '%{\033[31m%}○ %{\033[39m%}')
RPROMPT=$(echo '%{\033[31m%}$(git_prompt_info) ○ %2c ○ %{\033[39m%}') 
