export ZDOTDIR="$HOME/.config/zsh"

# Prefer Homebrew's current zsh functions and drop stale Cellar entries inherited
# through FPATH, which can break autoloads like add-zsh-hook.
if [[ -n "$HOMEBREW_PREFIX" && -d "$HOMEBREW_PREFIX/share/zsh/functions" ]]; then
  fpath=(
    "$HOMEBREW_PREFIX/share/zsh/functions"
    ${fpath:#$HOMEBREW_PREFIX/Cellar/zsh/*/share/zsh/functions}
  )
fi

# Apple Terminal loads before .zshrc and expects the system function path to be
# available for its shell session hooks.
if [[ -d /usr/share/zsh/5.9/functions ]]; then
  fpath=(/usr/share/zsh/5.9/functions ${fpath:#/usr/share/zsh/5.9/functions})
fi
