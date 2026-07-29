# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# True color
export TERM=xterm-256color
export COLORTERM=truecolor
export CLICOLOR=1

# XDG 数据/缓存目录 — 按 XDG Base Directory 规范整理
export HISTFILE="$HOME/.local/share/zsh/history"
export LESSHISTFILE="$HOME/.local/share/less/history"
export NODE_REPL_HISTORY="$HOME/.local/share/node/repl_history"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-${(%):-%m}"
export WGETRC="$HOME/.config/wget/wgetrc"
export RUSTUP_HOME="$HOME/.local/share/rustup"
export CARGO_HOME="$HOME/.local/share/cargo"
[ -s "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"

# Global PATH
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Shared libraries (local symlinks for missing -dev packages)
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"

# nvm 
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ============================================
# zsh-syntax-highlighting 自定义颜色配置
# ============================================

# 命令类 — 亮黄色
ZSH_HIGHLIGHT_STYLES[command]='fg=#fbea03'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#fbea03'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#fbea03'
ZSH_HIGHLIGHT_STYLES[function]='fg=#fbea03'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#fbea03'

# 路径 — 浅灰色 + 下划线
ZSH_HIGHLIGHT_STYLES[path]='fg=#aaaaaa'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#aaaaaa'

# 选项 — 深灰色
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#555555'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#555555'

# 字符串 — 浅灰色
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#aaaaaa'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#aaaaaa'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#aaaaaa'

# 重定向 — 浅灰色
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#aaaaaa'

# 命令替换 — 亮蓝色
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=#5fd7ff'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#5fd7ff'

# 未知令牌 — 保持默认（红色加粗）
# 通配符 — 保持默认（蓝色）

# Alias: lsd
# Use lsd instead of ls
alias ls='lsd'

# Long-format list
alias l='lsd -l'

# Long format and display all files (including hidden files)
alias la='lsd -la'

# Tree View
alias lt='lsd --tree'

# Human-friendly sizes, long format and display all files
alias ll='lsd -lha'

# Common Commands
alias rm='rm -i'
alias bat='batcat'

# yazi
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

fpath=(~/.config/zsh/completions $fpath)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh   # disabled: using p10k-omp.zsh
# [[ ! -f ~/.config/zsh/p10k-omp.zsh ]] || source ~/.config/zsh/p10k-omp.zsh

# Load the existing Bash environment variables
# source ~/.bashrc

# fzf
[ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh

# ripgrep + fzf
function rgf() {
  rg -l "$1" | fzf --preview "rg -n --color=always -C 3 '$1' '{}'"
}

# nvim for yazi
export EDITOR="nvim"
export VISUAL="nvim"

export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"

# opencode
export PATH=/home/lenovo/.local/share/opencode/bin:$PATH

# Oh My Posh prompt
eval "$(oh-my-posh init zsh --config "$HOME/dotfiles/oh-my-posh/config.omp.json")"
