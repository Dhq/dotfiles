# Path to your oh-my-zsh installation.
export ZSH=/Users/danhal/.oh-my-zsh
export NODE_PATH="/usr/local/lib/node_modules"
source /Users/danhal/.bash_profile

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

DEFAULT_USER="danhal"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm brew macos node z extract jsontools yarn vi-mode fzf)

# User configuration and path stuff

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH=/npm/bin:$PATH
export PATH="$HOME/bin/:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
 
# Enables shims and autocompletion
eval "$(pyenv init -)"
 
# Optional
# This stops pyenv-virutalenv from rewriting your prompt
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
 
# Activates the correct virtualenv automatically when entering a project.
# eval "$(pyenv virtualenv-init -)"

source $ZSH/oh-my-zsh.sh

export FZF_BASE="$HOME/.fzf"
export FZF_CTRL_T_COMMAND='ag --hidden --ignore .git --ignore node_modules --ignore Library -g ""'

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

# Key timeout 10ms
KEYTIMEOUT=1
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run alias.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ea="vim ~/.zshrc";
alias ev="vim ~/.vimrc";
alias eh="sudo vim /etc/hosts";
alias ez="vim ~/.zshrc";
alias fg="cd ~/git";
alias fn="cd ~/git/nordnet";
alias fo="cd ~/git/oss";
alias fh="cd ~";
alias gs="git status";
alias gb="git for-each-ref --format=‘%(refname:short)’ refs/heads | fzf | xargs git checkout";
alias gpn="git push --no-verify";
alias gpfn="gpf --no-verify";
alias links="ll node_modules | grep ‘>'";
alias lv="npm view $1 version";
alias fresh="git checkout master -f && git pull && yarn";
alias check_port="nc -vz 127.0.0.1 $1";
alias rl="source ~/.zshrc";
alias yis="yarn --ignore-scripts";
alias yat="yarn add-test";

[ -s `brew --prefix`/etc/autojump.sh ] && . `brew --prefix`/etc/autojump.sh 
