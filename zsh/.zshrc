# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='subl'
 else
   export EDITOR='nano'
fi

# Aliases
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/security.zsh

# oh-my-zsh
source $HOME/.zsh/oh-my-zsh.zsh

# nvm (node, npm)
source $HOME/.zsh/node-version-manager.zsh

# Package managers
source $HOME/.zsh/composer.zsh
source $HOME/.zsh/yarn.zsh

# Ruby Version Manager (must be last)
source $HOME/.zsh/rvm.zsh

# Neofetch
source $HOME/.zsh/neofetch.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
