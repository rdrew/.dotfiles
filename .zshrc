export DEBUG=metalsmith:* metalsmith
export PATH=$PATH:~/bin


source "$HOME/.console/console.rc" 2>/dev/null
# Path to your oh-my-zsh installation.
export ZSH=/Users/rdrew/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
#ZSH_THEME="bira"
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship"
#ZSH_THEME="gruvbox-powerline"
# ORDER
SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  hg
  package
  node
  ruby
  elixir
  xcode
  swift
  golang
  php
  rust
  julia
  docker
  aws
  venv
  conda
  pyenv
  dotnet
  ember
  # kubecontext
  #battery
  exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
plugins=(vsh-nvm zsh-syntax-highlighting git osx extract z brew cloudapp gulp npm ruby rvm sudo web-search wd)

# User configuration

#export PATH="/Users/rdrew/.composer/vendor/bin:/Users/rdrew/.rvm/gems/ruby-1.9.3-p550/bin:/Users/rdrew/.rvm/gems/ruby-1.9.3-p550@global/bin:/Users/rdrew/.rvm/rubies/ruby-1.9.3-p550/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/rdrew/.rvm/bin:/Applications/DevDesktop/drush:/Applications/DevDesktop/drush"


export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# use the right editor
export VISUAL=vim
export EDITOR="$VISUAL"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias is="ssh data.researchspaces.ca"
alias ryan="ssh -p 2222 rdrew@192.185.35.244"
alias nat="ssh -p 2222 rdrew@192.185.35.244"
alias weather="curl http://wttr.in/Charlottetown"
alias moon="curl http://wttr.in/Moon"
alias v="vim ."
alias nsr="npm start"
alias nsl="gulp localDev"
alias amars="ssh amars.discoveryspace.ca"
alias drl="~/vms/biomeds/drush.wrapper @local"
alias drr="~/vms/biomeds/drush.wrapper @remote"
alias biomeds="~/vms/biomeds/web/themes/custom/biomeds"
alias tpl="~/vms/biomeds/web/themes/custom/arma/templates"
alias sass="~/vms/biomeds/web/themes/custom/arma/src/assets/scss"
alias biomeds="~/vms/biomeds/web/themes/custom/biomeds"
alias zshrc="vim ~/.zshrc"
alias reloadzshrc="source ~/.zshrc"
alias zr="source ~/.zshrc"
alias vimrc="vim ~/.vimrc.local"
alias reloadvimrc="source ~/.vimrc.local"
alias c="clear"
alias vs="vagrant status"
alias vgs="vagrant global-status"
alias lp="~/bin/lilypond"
alias lp="~/bin/abc2ly"
alias vimupdate="vim +BundleInstall! +BundleClean +q"
# Show/Hide hidden files then relaunch finder to take effect
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall -KILL Finder'  
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall -KILL Finder'

# Helpful General aliases
alias cp='cp -iv'                      # Preferred 'cp' implementation  
alias mv='mv -iv'                      # Preferred 'mv' implementation  
alias mkdir='mkdir -pv'                # Preferred 'mkdir' implementation  
alias ll='ls -FGlAhp'                  # Preferred 'ls' implementation  
alias less='less -FSRXc'               # Preferred 'less' implementation  
cd() { builtin cd "$@"; ll; }          # Always list directory contents upon 'cd'  
alias cd..='cd ../'                    # Go back 1 directory level (for fast typers)  
alias ..='cd ../'                      # Go back 1 directory level  
alias ...='cd ../../'                  # Go back 2 directory levels  
alias .3='cd ../../../'                # Go back 3 directory levels  
alias .4='cd ../../../../'             # Go back 4 directory levels  
alias .5='cd ../../../../../'          # Go back 5 directory levels  
alias .6='cd ../../../../../../'       # Go back 6 directory levels  
alias f='open -a Finder ./'            # Opens current directory in MacOS Finder  
alias ~="cd ~"                         # Go Home  
alias ni='npm install --save-dev'
alias tree='tree -I "node*"'
#ssh logins
alias ds='ssh cshr.discoveryspace.ca -t "cd /var/www/html/; `echo $SHELL --login`"'
alias cbu='ssh cbufaces.cairnrepo.org -t "cd /var/www/html/drupal/sites/cbufaces.cairnrepo.org/themes/cbu_scholar; `echo $SHELL --login`"'
alias ilives='ssh islandlives.hp1.islandarchives.ca -t "cd /var/www/html/drupal/sites/islandlives.hp1.islandarchives.ca/themes/ilives; `echo $SHELL --login`"'
alias cc='drush @drupalvm.drupal7.dev cc theme-registry'
alias bugon='drush @drupalvm.drupal7.dev vset theme_debug 1'
alias bugoff='drush @drupalvm.drupal7.dev vset theme_debug 0'
# alias ryan="~/vms/ryans_site/docroot/sites/all/themes/ryans-site/"
# alias ohmyzsh="mate ~/.oh-my-zsh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval "$(thefuck --alias)"


export NVM_DIR="/Users/rdrew/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


export PATH="$HOME/.composer/vendor/bin:$PATH"
export CLICOLOR=1

export PATH="$PATH:/Applications/DevDesktop/tools"
function blt() {
if [ "`git rev-parse --show-cdup 2> /dev/null`" != "" ]; then
    GIT_ROOT=$(git rev-parse --show-cdup)
else
    GIT_ROOT="."
fi

if [ -f "$GIT_ROOT/vendor/bin/blt" ]; then
    $GIT_ROOT/vendor/bin/blt "$@"
else
    echo "You must run this command from within a BLT-generated project repository."
    return 1
fi
}

#my notetaking setup
note() {

        vim ~/Google\ Drive/notes/"$*".txt
}

notelist() {
        ls -c ~/Google\ Drive/notes/ | grep "$*"
}
n() {
        vim ~/Google\ Drive/notes/"$*".txt
}

nls() {
        ls -c ~/Google\ Drive/notes/ | grep "$*"
}
