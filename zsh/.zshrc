# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Ensure that exports are loaded first
[[ -f "$HOME/dotfiles/zsh/exports.zsh" ]] && source "$HOME/dotfiles/zsh/exports.zsh"

# Ensure that aliases are loaded second
[[ -f "$HOME/dotfiles/zsh/aliases.zsh" ]] && source "$HOME/dotfiles/zsh/aliases.zsh"

[[ -f "$HOME/dotfiles/zsh/starship/starship.zsh" ]] && source "$HOME/dotfiles/zsh/starship/starship.zsh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"