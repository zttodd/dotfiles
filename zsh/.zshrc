# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='subl'
 else
   export EDITOR='nano'
fi

# ----------
# oh-my-zsh
# ----------

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="modified-gianu"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ----------
# Composer
# ----------

export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"

# ----------
# nvm / npm
# ----------

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Local node_modules packages
export PATH="./node_modules/.bin:$PATH"

# ----------
# rvm
# ----------

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# ----------
# Yarn
# ----------

# Add Yarn to path
export PATH=~/.yarn/bin:$PATH

# ----------------------------------------
# Aliases
# ----------------------------------------

alias ..='cd ..'
alias cd..='cd ..'
alias cls='clear'
alias reload="source ~/.zshrc"

neofetch