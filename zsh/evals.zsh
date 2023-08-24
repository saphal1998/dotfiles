# jenv
eval "$(jenv init -)"

# Bindkeys
bindkey -s ^f "tmux_sessionizer\n"

# opam configuration
[[ ! -r "$HOME/.opam/opam-init/init.zsh" ]] || source "$HOME/.opam/opam-init/init.zsh"  > /dev/null 2> /dev/null
