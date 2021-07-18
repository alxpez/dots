export ZSH=~/.oh-my-zsh
export EDITOR=code

ZSH_THEME="mymuse"
ZSH_DISABLE_COMPFIX="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  npm
  encode64
  web-search
)

source $ZSH/oh-my-zsh.sh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export KERL_CONFIGURE_OPTIONS="--disable-hipe --without-javac --with-ssl=$(brew --prefix openssl)"
export CFLAGS="-O2 -g -fno-stack-check"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
