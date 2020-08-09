# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='nano'
fi

# Aliases
source $HOME/.zsh/aliases.zsh

# oh-my-zsh
source $HOME/.zsh/oh-my-zsh.zsh

# n version manager (node, npm)
source $HOME/.zsh/n-version-manager.zsh

# pip (python)
source $HOME/.zsh/pip.zsh

# rbenv (ruby)
source $HOME/.zsh/rbenv.zsh

# Go
source $HOME/.zsh/go.zsh

# Package managers
source $HOME/.zsh/composer.zsh
source $HOME/.zsh/yarn.zsh

# Run neofetch (only uncomment if neofetch is installed)
# source $HOME/.zsh/neofetch.zsh

# Windows Terminal (Using a Linux shell in WSL)
# Other writable directories to bold, with cyan text, and a black background
LS_COLORS='ow=01;36;40'