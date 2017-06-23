# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git ruby github)
#plugins=(rails git ruby git-prompt github)

source $ZSH/oh-my-zsh.sh


alias ctags=/usr/local/bin/ctags
alias pbcopy="reattach-to-user-namespace pbcopy"
alias open="reattach-to-user-namespace open"
alias ghi='TERM=xterm-256color ghi'
alias be='bundle exec'
#alias tmux="TERM=screen-256color-bce tmux"
#alias vim=$HOME/bin/vim

# Customize to your needs...
export PATH=/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/texbin:$HOME/bin
export JAVA_HOME=`/usr/libexec/java_home`

export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
export "VAGRANT_VCENTER"="Production"
export "ASIG_TEMPLATES_REPO"="/Users/chricrai/Documents/asig-templates"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/opt/chefdk/bin:/opt/chefdk/embedded/bin" # Add RVM to PATH for scripting

#Custom Functions
function notes {
    tmux selectp -t 0
    tmux splitw -h -l 80 "vim ~/Documents/notes.org"
}

#Dead options
#export TAPDIR=$(brew --repo)/Library/Taps
#export TERM=xterm-256color
#export CLASSPATH=/usr/local/Cellar/ivy/2.3.0/libexec/ivy-2.3.0.jar
#export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/MacGPG2/bin:/Users/chricrai/bin:/usr/texbin
#export BACKUPHOME=/Volumes/Time\ Machine\ Backups/Backups.backupdb/Chris\ Craig’s\ MacBook\ Pro/2012-08-01-084625/Macintosh\ HD/Users/chricrai
