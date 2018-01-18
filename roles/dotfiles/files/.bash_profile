# Exports
export CLICOLOR=1
export TERM=xterm-256color

# Aliases
alias ll="ls -lahtG"
alias ls="ls -G"
alias gg="git status -s"
alias gityolo='git commit -am "DEAL WITH IT" && git push -f origin master'
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias lanip="ipconfig getifaddr en0"
alias flushdns="dscacheutil -flushcache"
alias openports="lsof -i | grep LISTEN"
alias grep="grep --color=auto"
alias bp="vi ~/.bash_profile"
alias reload="source ~/.bash_profile"
alias rpass="env LC_CTYPE=C tr -dc 'a-zA-Z0-9-!@#$%&*_+.=' < /dev/urandom | head -c 20 ; echo"
alias web="python -m SimpleHTTPServer 8000"
alias lock="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias cisco="screen /dev/tty.usbserial"
alias bgp="vi /usr/local/Cellar/bash-git-prompt/2.7.1/share/themes/Chaos.bgptheme"

# Git Prompt
GIT_PROMPT_THEME=Chaos

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Functions
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;; *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)           echo "'$1' cannot be extracted via extract()" ;;
      esac
    else
         echo "'$1' is not a valid file"
    fi
}
