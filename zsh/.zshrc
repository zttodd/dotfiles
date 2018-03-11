# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='subl'
 else
   export EDITOR='nano'
fi

# oh-my-zsh
source $HOME/.zsh/oh-my-zsh.zsh

# nvm (node, npm)
source $HOME/.zsh/node-version-manager.zsh

# Package managers
source $HOME/.zsh/composer.zsh
source $HOME/.zsh/yarn.zsh

# Ruby Version Manager (must be last)
source $HOME/.zsh/rvm.zsh

# Aliases
source $HOME/.zsh/aliases.zsh

neofetch