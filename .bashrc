# prompt setup
#export PS1="\[\e[37m\][\[\e[m\]\[\e[33m\]\w\[\e[m\]\[\e[37m\]]\[\e[m\]\[\e[33;40m\]\\$\[\e[m\] "
export PS1="\[\e[1;37m\][\[\e[0m\]\[\e[1;32m\]\w\[\e[0m\]\[\e[1;37m\]]\[\e[0m\] \[\e[1;37m\]\\$\[\e[0m\] "

# startup tmux
#if [[ ! $TERM =~ screen ]]; then
#    exec tmux
#fi

# declare datetime shit as global
YEAR=-1
MONTH=-1
DAY=-1
HOUR=-1
HOUR_12H=-1
MINUTE=-1
AM_PM=""

# do some datetime formatting stuff
HOUR=$(date +"%H")
DATETIME=$(date +"%A, %B %e, %Y -- %r")

# set up greeting
if (( HOUR < 12 )) ; then
    GREETING="Good morning"
elif (( HOUR < 16 )) ; then
    GREETING="Good afternoon"
else
    GREETING="Good evening"
fi
WHOAMI=$(whoami)

# welcome message
echo "$DATETIME"
echo -e "\e[1m$GREETING, \e[32m$WHOAMI\e[0m\e[1m."


# easy extract method
extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}


# my stupid aliases
alias bitch='sudo'
alias shit='ls'
alias fuck='cd'
alias cock='vim'
alias penis='python'
alias fuckyou='cd ~'

# my not so stupid aliases
alias ..='cd ..'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias home='cd ~'
alias mysql_friendsy="mysql -h friendsydbfinal.cy4f86llzvbc.us-east-1.rds.amazonaws.com -u blake -p"
alias turn_off_ipv6="sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1"
alias turn_on_ipv6="sudo sysctl -w net.ipv6.conf.all.disable_ipv6=0"
