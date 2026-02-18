# Dependencies
# zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster-c"

plugins=(git ssh-agent virtualenv kubectl kube-ps1 npm docker zsh-autosuggestions)

zstyle :omz:plugins:ssh-agent identities ed-nhs-key ed-raven-key

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#667766,bg=#333333"
bindkey '^ ' autosuggest-accept

export BROWSER="/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

for s in ~/scripts/*; do
  source "$s"
done

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
add-zsh-hook chpwd load-asdf
load-nvmrc; load-asdf

autoload -U compinit promptinit
promptinit; compinit
zstyle ':completion:*' menu select

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
