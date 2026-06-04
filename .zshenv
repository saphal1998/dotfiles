export ZDOTDIR="$HOME/.config/zsh"

# zsh reads this top-level file first; keep the real env setup with the rest of
# the zsh config so shells that inherit ZDOTDIR can read it directly.
[[ -f "$ZDOTDIR/.zshenv" ]] && source "$ZDOTDIR/.zshenv"
