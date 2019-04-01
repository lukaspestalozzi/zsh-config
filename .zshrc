
# ---------- OH-MY-ZSH ---------- #

# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/.oh-my-zsh"

# ----- THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME_RANDOM_CANDIDATES=(
  robbyrussell
  afowler
  amuse
  maran
  ys
  tjkirch
  spaceship
  geometry
)
ZSH_THEME="tjkirch"
# ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# ----- PLUGINS
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sudo
  history-substring-search
  encode64
  extract
  # git-flow
  pip
)

source $ZSH/oh-my-zsh.sh

# ---------- USER CONFIGURATION ---------- #
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/lu/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=2048
SAVEHIST=2096
setopt appendhistory autocd nomatch
unsetopt extendedglob notify
bindkey -v

# End of lines added by compinstall

# autocomplete aliases
setopt COMPLETE_ALIASES

# For autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# autocomplete in sudo mode
zstyle ':completion::complete:*' gain-privileges 1

# Enable a way to set up a colored prompt in Zsh
autoload -Uz promptinit
promptinit


# ---------- Aliases ---------- #
source $ZDOTDIR/.aliases

# # Note: Path is set in .zshenv



