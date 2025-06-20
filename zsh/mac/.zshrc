# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster-c"

plugins=(git ssh-agent)

zstyle :omz:plugins:ssh-agent identities github

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#667766,bg=#333333"
bindkey '$' autosuggest-accept

# --------------- Custom Config ---------------------------------

export AWS_PROFILE=none
source "$HOME/.cargo/env"

for s in ~/scripts/*; do
  source "$s"
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"
  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

autoload -U compinit promptinit
promptinit

compinit
zstyle ':completion*' menu select

add-zsh-hook chpwd load-nvmrc
load-nvmrc

if [[ "$(which pyenv)" != *"not found" ]]; then
  eval "$(pyenv init --path)"
fi
