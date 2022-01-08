export ZSH="/Users/macos/.oh-my-zsh"

ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	zsh-syntax-highlighting
	zsh-autosuggestions
	autojump
  vi-mode
  zsh-completions
	)

source $ZSH/oh-my-zsh.sh

# User configuration
#source ~/.bash_profile

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#zsh-completions
autoload -U compinit && compinit
# vi-mode(vim)
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
#MODE_INDICATOR="%F{yellow}+%f"
MODE_INDICATOR=""
# ===
# === alias
# ===
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias v zshrc
#alias vzsh ="nvim ~/.zshrc"
alias l="ll -a"
alias ra="ranger"
alias s="neofetch"
alias tl="tmux ls"
alias tnew="tmux new -s"
alias ta="tmux a -t"
alias tks="tmux kill-session -t"
alias sudo v="sudo lvim"
alias sudo vi="sudo lvim"
alias v="lvim"
alias vi="lvim"
alias c="clear"
alias pip="pip3"
alias live="live-server"
alias gt="gotop"
alias python -m="python3 -m"
# alias git
alias gs="git status"
alias ga="git add"
alias lg="lazygit"
# alias fuck_desktop_icon
alias fuck_desktop_icon="defaults write com.apple.finder CreateDesktop -bool FALSE; killall Finder"
alias backup_desktop_icon="defaults write com.apple.finder CreateDesktop -bool true; killall Finder"

# ===
# === Neovim
# ===

# ===
# === fzf
# ===
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)
# if you want to preview file
# export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
# Use ~~ as the trigger sequence instead of the default **
#export FZF_COMPLETION_TRIGGER='~~'
# FZF_DEFAULT_COMMAND是用来列出文件以供fzf搜索的命令
# export FZF_DEFAULT_COMMAND='fdfind --hidden --follow -E ".git" -E "node_modules" . /etc /home'
export FZF_DEFAULT_OPTS='--bind=ctrl-y:toggle+down  --height 50% --layout=reverse  --border --preview-window=down'

# ===
# === path
# ===
export PATH="~/.config:$PATH"
export RANGER_LOAD_DEFAULT_Rc=FALSE
export GOPATH=~/opt/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.local/bin
#export PATH="$HOME/.local/bin"
go env -w GO111MODULE=auto
go env -w GOPROXY=https://goproxy.io,direct
#maven
export M2_HOME=/Users/macos/Downloads/apache-maven-3.8.3
export PATH=$PATH:$M2_HOME/bin
PATH=/bin:/usr/bin:/usr/local/bin:${PATH} 
export PATH
export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-$HOME/.config/lvim}"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-$HOME/.cache/lvim}"
export PATH=${PATH}:/usr/local/mysql/bin
export RANGER_LOAD_DEFAULT_RC=FALSE
#exec neovide -- -u "$LUNARVIM_RUNTIME_DIR/lvim/init.lua" "$@"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/texlive/2021/bin"
# auto update zsh
zstyle ':omz:update' mode auto
# Fixed that Ranger cannot be used in tmux
# ===
# === Tmux
# ===
if [[ $TMUX != "" ]] then
    export TERM="tmux-256color"
else
    export TERM="xterm-256color"
fi
export TERM=xterm-256color
