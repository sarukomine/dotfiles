
CACHE_PATH="$HOME/.cache"
DOTFILES="$HOME/.dotfiles"

# Create the .cache directory if it doesn't exist
[[  -d $CACHE_PATH  ]] || mkdir -p $CACHE_PATH

# Set the ZSH compdump cache directory
ZSH_COMPDUMP_PATH="$CACHE_PATH/zsh/zcompdump"
ZSH_COMPDUMP="$ZSH_COMPDUMP_PATH/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

# Create the ZSH compdump cache if it doesn't exist
[[  -d $ZSH_COMPDUMP_PATH  ]] || mkdir -p $ZSH_COMPDUMP_PATH

ZSH_COMPDUMP_FILES=($ZSH_COMPDUMP_PATH/zcompdum(Nm-20))

if (( $#ZSH_COMPDUMP_FILES )); then
  autoload -Uz compinit -C -d $ZSH_COMPDUMP
else
  autoload -Uz compinit -d $ZSH_COMPDUMP
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="code ~/.zshrc"
alias update="brew update && brew upgrade"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reload="exec $SHELL"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias cl="clear"
alias php="herd php"
alias composer="herd composer"
alias artisan="herd php artisan"

# Directories
alias dotfiles="cd $DOTFILES"
