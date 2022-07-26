# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#
# Variaveis ---------------------------------------------------------------#
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/$HOME/bin"
# set DISPLAY variable to the IP automatically assigned to WSL2
export HOST_IP="$(ip route |awk '/^default/{print $3}')"
export PULSE_SERVER="tcp:$HOST_IP"
export DISPLAY="$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0"
export OPEN_WEATHER_API_KEY="[382991e8826a3cce745e2d0268edcff8]"


#Automatically start dbus
sudo /etc/init.d/dbus start &> /dev/null

#--------------------------------------------------------------------------#
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Temas -------------------------------------------------------------------#
ZSH_THEME="powerlevel10k/powerlevel10k"

#--------------------------------------------------------------------------#
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Custom Search ---------------------------------------------------------------------------#

ZSH_WEB_SEARCH_ENGINES=(
    gitHub https://github.com/
    notion https://www.notion.so/
    notion_driven https://bootcampra.notion.site/
)

autoload -U compinit && compinit

#------------------------------------------------------------------------------------------#

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#Plugins ---------------------------------------------------------------------------------#
plugins=(git zsh-autosuggestions web-search dirhistory git zsh-z fzf-tab copypath)


source $ZSH/oh-my-zsh.sh
source /home/lucax/git-clones/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/lucax/.oh-my-zsh/custom/plugins/zsh-z

#------------------------------------------------------------------------------------------#

# User configuration

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh# "



# WLS alias ---------------------------------------------------------------------------------#
alias psql="sudo service postgresql"

#gerais
alias update="sudo apt-get update"
alias q="exit"
alias c="clear"

#tmux
alias ks="tmux kill-server"
alias tnew="tmux new-session -s"
alias tent="tmux attach-session -t"

#configs
alias czsh="notepad.exe ~/.dotfiles/.zshrc"
alias ctmux="notepad.exe ~/.dotfiles/.tmux.conf"

#programas 
alias sbl="sublime"
alias ds="discord"
alias ex="explorer.exe ."
alias ntpd="notepad.exe"
alias gk="gitKraken"

#sites
alias gl="google"
alias yt="youtube"
alias gh="gitHub"
alias mygh="gitHub LucasAlvsz"
alias ghr='gitHub "LucasAlvsz/"$(basename $PWD)'
alias myno="notion Driven-58c41f9a6b6d44a0a6aac5194bf09b82"
alias drno="notion_driven Materiais-2451301afd0e48c8837fdc97cf1bc5b6"

#zsh
alias upzsh='exec zsh'
alias cppath="copypath"


#VSCode alias
alias dev="npm run dev"
alias test="npm run test"
alias pm="npx prisma migrate"
alias pdb="npx prisma db"
alias ps="npx prisma studio"

#gitHub


#------------------------------------------------------------------------------------------#

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /home/lucax/git-clones/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
