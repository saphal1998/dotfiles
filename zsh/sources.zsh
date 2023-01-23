# Ensure that exports are loaded first
[[ -f "$HOME/dotfiles/zsh/exports.zsh" ]] && source "$HOME/dotfiles/zsh/exports.zsh"

# Ensure that aliases are loaded first
[[ -f "$HOME/dotfiles/zsh/aliases.zsh" ]] && source "$HOME/dotfiles/zsh/aliases.zsh"

# fzf
[[ -f "$DOTFILES_PATH/zsh/fzf.zsh" ]] && source "$DOTFILES_PATH/zsh/fzf.zsh"

# starship
[[ -f "$DOTFILES_PATH/zsh/starship/starship.zsh" ]] && source "$DOTFILES_PATH/zsh/starship/starship.zsh"

# Azure CLI autocomplete
[[ -f "/opt/homebrew/opt/az/etc/bash_completion.d/az" ]] && source "/opt/homebrew/opt/az/etc/bash_completion.d/az"

# Google cloud CLI autocomplete
[[ -f "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" ]] && source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"