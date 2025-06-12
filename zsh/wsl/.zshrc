export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster-c"

plugins=(git ssh-agent)

zstyle :omz:plugins:ssh-agent identities ed-nhs-key ed-raven-key

source $ZSH/oh-my-zsh.sh

export BROWSER="/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"
export AWS_PROFILE=AggNonProd
#export AWS_PROFILE="nhsd-dev"

. ~/scripts/*

alist() {
  stat -c $'%y\t%n' * | sort -nr
}

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
add-zsh-hook chpwd load-nvmrc
load-nvmrc

autoload -U compinit; compinit

eval "$(pyenv init --path)"
