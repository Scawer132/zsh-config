export TERM=xterm-256color
export COLORTERM=truecolor
export CLICOLOR=1

export HISTFILE="$HOME/.local/share/zsh/history"
export LESSHISTFILE="$HOME/.local/share/less/history"
export NODE_REPL_HISTORY="$HOME/.local/share/node/repl_history"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-${(%):-%m}"
export WGETRC="$HOME/.config/wget/wgetrc"

export RUSTUP_HOME="$HOME/.local/share/rustup"
export CARGO_HOME="$HOME/.local/share/cargo"
[ -s "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export EDITOR="nvim"
export VISUAL="nvim"

export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"

export PATH="/home/lenovo/.local/share/opencode/bin:$PATH"
