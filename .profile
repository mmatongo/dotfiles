#!/bin/sh

# flags
CORES=$(nproc || echo 1)
export MAKEFLAGS="-j$CORES"
export SAMUFLAGS=$MAKEFLAGS

# kiss
export KISS_PROMPT=1  # 0 to disable prompts (for scripting)
export KISS_PATH="$KISS_PATH:/home/dm/.community/community:/home/dm/packages:/home/dm/packages/staging"
export PATH=~/.local/share/junest/bin:$PATH

# sx
export XDG_DATA_HOME=/home/dm/.sx
export XDG_CONFIG_HOME=$XDG_DATA_HOME
[ -z "$DISPLAY" ] && [ "$(tty)" = /dev/tty1 ] && exec sx

# aliases and more
export ENV="$HOME/.ashrc"

# defaults
export EDITOR="nvim"
export VISUAL=$EDITOR
export TERMINAL="st"
export BROWSER="firefox"
#sh ~/.fehbg &

#others
export PF_INFO="ascii os kernel uptime pkgs memory"
[ "$DISPLAY" ] || {
    export DISPLAY=:0
    read -r && x
}

TZ='Lusaka/Africa'; export TZ

HOSTNAME="*"
EDITOR="nvim"
PF_COL3=
PF_COL2=
PF_COL1=
PF_SEP=">"
