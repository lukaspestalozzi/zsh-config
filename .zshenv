export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5

if [[ $LANG = '' ]]; then
  export LANG=en_US.UTF-8
fi


# ---------- PATH ---------- #
# don't add something to path that is already there
typeset -U path
path=(~/.local/bin $path[@])

export MANPATH="/usr/local/man:$MANPATH"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='gedit'
else
  export EDITOR='nano'
fi
