# Adding a dotfiles directory to the path so that we can source files from there
export DOTFILES_REPO_PATH="$HOME/dotfiles"

# Adding local bin to path
export PATH=/usr/local/bin:$PATH

if [[ $(command -v brew) != "" ]]; then
  # Adding homebrew bin to Path
  export PATH=$HOMEBREW_PREFIX/bin:$PATH
  export PATH=$HOMEBREW_PREFIX/opt:$PATH

  # Adding sbin homebrew to Path
  export PATH=$HOMEBREW_PREFIX/sbin:$PATH
fi

# setting TERM
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

# Adding cargo and rust 
# export PATH=$PATH:$HOME/.cargo/bin 

# Adding Go Bin to path
# export GOPATH=$HOME/go
# export GOBIN=$GOPATH/bin
# export PATH=$PATH:$GOBIN


# pnpm
# export PNPM_HOME="$HOME/.pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac