if [[ $(command -v brew) == "" ]]; then
	return
fi
# Setup fzf
# ---------
FZF_PREFIX="$(brew --prefix fzf 2>/dev/null)" || return
if [[ ! "$PATH" == *"$FZF_PREFIX/bin"* ]]; then
  PATH="${PATH:+${PATH}:}$FZF_PREFIX/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$FZF_PREFIX/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$FZF_PREFIX/shell/key-bindings.zsh"

# fzf binds Tab to fzf-completion; keep plain Tab on zsh command completion.
bindkey '^I' expand-or-complete
