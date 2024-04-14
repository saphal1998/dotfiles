# Adding a dotfiles directory to the path so that we can source files from there
export DOTFILES_REPO_PATH="$HOME/dotfiles"

# Adding local bin to path
export PATH=/usr/local/bin:$PATH

# Adding homebrew bin to Path
export PATH=$HOMEBREW_PREFIX/bin:$PATH

# Adding sbin homebrew to Path
export PATH=$HOMEBREW_PREFIX/sbin:$PATH

# Adding Go Bin to path
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Nvm
export NVM_DIR="$HOMEBREW_PREFIX/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/.pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# TERM
TERM=xterm

# TERMINFO: https://gpanders.com/blog/the-definitive-guide-to-using-tmux-256color-on-macos/
export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo

#Adding Scripts
export PATH="$PATH:$HOME/dotfiles/scripts"

# Adding Android SDK (https://www.revelo.com/blog/how-to-build-an-android-development-environment-without-android-studio)
# export ANDROID_SDK_ROOT="$HOME/Development/Android/sdk"
# export ANDROID_CMD_LINE_TOOLS="$ANDROID_SDK_ROOT/cmdline-tools/latest"
# export ANDROID_PLATFORM_TOOLS="$ANDROID_SDK_ROOT/platform-tools"
# export ANDROID_AVD_HOME="$ANDROID_SDK_ROOT/avd"
# export PATH="$PATH:$ANDROID_CMD_LINE_TOOLS/bin:$ANDROID_SDK_ROOT:$ANDROID_PLATFORM_TOOLS"

