# Dotfiles  

**These dotfiles can be installed with GNU stow**  
- abcde  
- bash  
- conky  
- oh my zsh
- ranger  
- sublime text  
- taskwarrior
- terminator  
- tmux  
- vim  
- visual studio code  
- zsh  

--- ✄ -----------------------

Inspiration for this setup, as well as more detailed instructions for this method of using GNU Stow: https://github.com/xero/dotfiles.  

Here's a quick overview to get started:  

First, you create or move your dotfiles from their original location into corresponding directories. In my setup, they're named by program (like `bash` or `vim`), or by program and platform (like `sublime-mac` or `sublime-linux`). When you run `stow` on one of these directories, the dotfiles within that directory will be aliased to their appropriate location in your home directory. So, for each config file you want to install, use the name of that directory in a stow command:  

- `stow bash`  

And the dotfiles of that directory will be aliased to their location in your home directory:  

`~/.bashrc -> ~/dotfiles/bash/.bashrc`  
`~/.bash_aliases -> ~/dotfiles/bash/.bash_aliases`  

For each dotfile that needs to go in a directory (or directories) within the home directory, such as `.config`, recreate that hierarchy and stow will place the dotfile accordingly.  

Here are the results of `stow sublime-linux`  

`~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings -> ~/dotfiles/sublime-linux/.config/sublime-text-3/Packages/User/Preferences.sublime-settings`
