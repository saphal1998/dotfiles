autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

# Ensure sources are imported first
[[ -f "$HOME/.config/zsh/sources.zsh" ]] && source "$HOME/.config/zsh/sources.zsh"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

