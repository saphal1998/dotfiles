[[ -f "$ZDOTDIR/exports.zsh" ]] && source "$ZDOTDIR/exports.zsh"
[[ -f "$ZDOTDIR/aliases.zsh" ]] && source "$ZDOTDIR/aliases.zsh"
[[ -f "$ZDOTDIR/evals.zsh" ]] && source "$ZDOTDIR/evals.zsh"
[[ -f "$ZDOTDIR/options.zsh" ]] && source "$ZDOTDIR/options.zsh"

# starship
[[ -f "$ZDOTDIR/starship/starship.zsh" ]] && source "$ZDOTDIR/starship/starship.zsh"

[[ -f "$ZDOTDIR/functions.zsh" ]] && source "$ZDOTDIR/functions.zsh"

# Using zsh autosuggestions
[[ $(command -v brew) != "" ]] && [[ -f "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
# ZSH Auto Suggestions style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#555555,bg=gray,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Using zsh syntax highlighting
[[ $(command -v brew) != "" ]] && [[ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# Using zsh vi-mode 
[[ $(command -v brew) != "" ]] && [[ -f "$(brew --prefix)/share/zsh-vi-mode/zsh-vi-mode.zsh" ]] && source "$(brew --prefix)/share/zsh-vi-mode/zsh-vi-mode.zsh"

[[ -f "$ZDOTDIR/fzf.zsh" ]] && source "$ZDOTDIR/fzf.zsh"

[[ -f "$ZDOTDIR/bindkeys.zsh" ]] && source "$ZDOTDIR/bindkeys.zsh"
