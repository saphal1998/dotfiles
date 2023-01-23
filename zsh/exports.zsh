# Adding a dotfiles directory to the path so that we can source files from there
export DOTFILES_PATH="$HOME/dotfiles"

# Adding local bin to path
export PATH=/usr/local/bin:$PATH

# Adding homebrew bin to Path
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/**/bin:$PATH

# Adding jenv to Path
export PATH="$HOME/.jenv/bin:$PATH"

# Adding Pocketbase to Path
export PATH="/opt/homebrew/opt/pocketbase:$PATH"

# Adding fig to Path
export PATH=$PATH:~/.local/bin

# Adding nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Adding GPG Support
GPG_TTY=$(tty)
export GPG_TT