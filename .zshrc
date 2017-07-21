#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#Custom Aliases
alias vim=nvim
alias pbcopy="reattach-to-user-namespace pbcopy"

#Custom Functions
function notes {
    tmux selectp -t 0
    tmux splitw -h -l 80 "nvim ~/Documents/notes/notes.md"
    tmux splitw -v "nvim ~/Documents/notes/daily.md"
    tmux selectp -t 0
}

function notes-commit {
    pushd .
    cd ~/Documents/notes
    git commit -a -m "$(date)"
    git push
    popd
}
