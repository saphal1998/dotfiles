# Adding aliases
alias gs="git status" 
alias pn="pnpm"
alias bs="brew services"
alias dc="docker compose"
# Using this: https://gist.github.com/w3cj/cdd447b1a10ce741e4ee968fa6b75553 on hetzner - follow the comments - I have only shorthanded the command
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; sudo gem update'
alias vim= "nvim"

alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
