export ZSH="$HOME/.oh-my-zsh"
plugins=(
  git
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

path+=("/usr/local/go/bin")
path+=("$HOME/go/bin")

export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias glaude="go-claude"

# opencode
export PATH=/Users/eduardlikwong/.opencode/bin:$PATH
