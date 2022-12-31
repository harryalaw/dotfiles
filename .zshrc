export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git 
    zsh-autosuggestions
)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh

alias ,zshconfig="nvim ~/.zshrc"
alias gs="git status"
alias vim="nvim"
alias ,logme="git lg"

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

# Install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"
