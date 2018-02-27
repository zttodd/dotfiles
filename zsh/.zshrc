# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='subl'
 else
   export EDITOR='nano'
fi

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.
ZSH_THEME="modified-gianu"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"

# nvm / npm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # Loads nvm bash_completion
export PATH="./node_modules/.bin:$PATH" # Local node_modules packages

# Yarn
export PATH=~/.yarn/bin:$PATH # Add Yarn to path

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH. Must be last PATH variable change.

# Aliases
alias ..='cd ..'
alias cd..='cd ..'
alias cls='clear'
alias reload="source ~/.zshrc"

neofetch