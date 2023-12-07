# Ensure that exports are loaded first
[[ -f "$HOME/dotfiles/zsh/exports.zsh" ]] && source "$HOME/dotfiles/zsh/exports.zsh"

# Ensure that aliases are loaded first
[[ -f "$HOME/dotfiles/zsh/aliases.zsh" ]] && source "$HOME/dotfiles/zsh/aliases.zsh"

# Ensure that evals are computed too
[[ -f "$HOME/dotfiles/zsh/evals.zsh" ]] && source "$HOME/dotfiles/zsh/evals.zsh"

# fzf
[[ -f "$DOTFILES_REPO_PATH/zsh/fzf.zsh" ]] && source "$DOTFILES_REPO_PATH/zsh/fzf.zsh"

# starship
[[ -f "$DOTFILES_REPO_PATH/zsh/starship/starship.zsh" ]] && source "$DOTFILES_REPO_PATH/zsh/starship/starship.zsh"

[[ -f "$DOTFILES_REPO_PATH/zsh/functions.zsh" ]] && source "$DOTFILES_REPO_PATH/zsh/functions.zsh"

# Google cloud CLI autocomplete
[[ -f "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" ]] && source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
