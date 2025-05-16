export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git 
    zsh-autosuggestions
)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

alias ,zshConfig="vim ~/.zshrc && source ~/.zshrc"
alias gs="git status"
alias gds="git diff --staged"
alias gcane="git commit --amend --no-edit"
alias ,logme="git lg"
alias ,reset="git reset --hard @{u}"

alias cl="clear"

gco() {
    local query="${1:-}"
    local branch
    branch=$(git for-each-ref --format='%(refname:short)' | sed 's,^origin/,,' | sort -u | fzf --query="$query" --select-1 --exit-0)
    if [[ -n $branch ]]; then
        git checkout "$branch"
    fi
}

alias ll="eza -l -g --icons --git"
alias lla="eza -l -a -g --icons --git"
alias llt="eza -1 --icons --tree --git-ignore"
alias ls="eza"

alias cd="z"
alias grep="rg"
alias cat="bat"

eval "$(fnm env --use-on-cd --version-file-strategy recursive)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(atuin init zsh)"

# Install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

