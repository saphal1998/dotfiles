# Adding a dotfiles directory to the path so that we can source files from there
export DOTFILES_PATH="$HOME/dotfiles"

# Adding local bin to path
export PATH=/usr/local/bin:$PATH

# Adding homebrew bin to Path
export PATH=/opt/homebrew/bin:$PATH

# Adding MYSQL to path
export PATH=/opt/homebrew/opt/mysql@5.7/bin:$PATH

# Adding ant to PATH
export PATH=/opt/homebrew/opt/ant@1.9/bin:$PATH

# Adding sbin homebrew to Path
export PATH=/opt/homebrew/sbin:$PATH

# Adding jenv to Path
export PATH="$HOME/.jenv/bin:$PATH"

# Adding Pocketbase to Path
export PATH="/opt/homebrew/opt/pocketbase:$PATH"

# Adding rust to Path
export PATH="$PATH:$HOME/.cargo/bin"

# Adding Scala to Path
export PATH="$PATH:/opt/homebrew/opt/scala@2.13/bin"

# Adding Go Bin to path
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Nvm
export NVM_DIR="/opt/homebrew/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Adding GPG Support
GPG_TTY=$(tty)
export GPG_TT

# Changing custom folder for ZSH
ZSH_CUSTOM="$HOME/dotfiles/zsh/oh-my-zsh"

# Adding kubeconfig to env
export KUBECONFIG="$HOME/.kube/config"

# Adding Spark to path
export SPARK_HOME="/opt/homebrew/opt/apache-spark/libexec"

# pnpm
export PNPM_HOME="$HOME/.pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# TERM
TERM=xterm


#Adding Scripts
export PATH="$PATH:$HOME/dotfiles/scripts"