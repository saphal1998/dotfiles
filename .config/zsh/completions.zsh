if [[ -n "$HOMEBREW_PREFIX" ]]; then
  fpath=(
    "$HOMEBREW_PREFIX/share/zsh/functions"
    ${fpath:#$HOMEBREW_PREFIX/Cellar/zsh/*/share/zsh/functions}
  )
fi
