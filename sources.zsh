# Ensure that exports are loaded first
[[ -f "$HOME/exports.zsh" ]] && source "$HOME/exports.zsh"

# Ensure that aliases are loaded first
[[ -f "$HOME/aliases.zsh" ]] && source "$HOME/aliases.zsh"

# Ensure that evals are computed too
[[ -f "$HOME/evals.zsh" ]] && source "$HOME/evals.zsh"

# fzf
[[ -f "$HOME/fzf.zsh" ]] && source "$HOME/fzf.zsh"

# starship
[[ -f "$HOME/starship/starship.zsh" ]] && source "$HOME/starship/starship.zsh"

[[ -f "$HOME/functions.zsh" ]] && source "$HOME/functions.zsh"

