# Ensure that exports are loaded first
[[ -f "$HOME/exports.zsh" ]] && source "$HOME/exports.zsh"

# Ensure that aliases are loaded first
[[ -f "$HOME/aliases.zsh" ]] && source "$HOME/aliases.zsh"

# Ensure that evals are computed too
[[ -f "$HOME/evals.zsh" ]] && source "$HOME/evals.zsh"

[[ -f "$HOME/options.zsh" ]] && source "$HOME/options.zsh"

# starship
[[ -f "$HOME/starship/starship.zsh" ]] && source "$HOME/starship/starship.zsh"

[[ -f "$HOME/functions.zsh" ]] && source "$HOME/functions.zsh"

# Using zsh autosuggestions
[[ $(command -v brew) != "" ]] && [[ -f "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
# ZSH Auto Suggestions style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#555555,bg=gray,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Using zsh syntax highlighting
[[ $(command -v brew) != "" ]] && [[ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# Using zsh vi-mode 
[[ $(command -v brew) != "" ]] && [[ -f "$(brew --prefix)/share/zsh-vi-mode/zsh-vi-mode.zsh" ]] && source "$(brew --prefix)/share/zsh-vi-mode/zsh-vi-mode.zsh"

[[ -f "$HOME/fzf.zsh" ]] && source "$HOME/fzf.zsh"

[[ -f "$HOME/bindkeys.zsh" ]] && source "$HOME/bindkeys.zsh"
