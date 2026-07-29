# ============================================
# zsh main configuration
# ============================================

export ZSH="$HOME/.config/oh-my-zsh"

ZSH_CONFIG="$HOME/dotfiles/zsh/config"

source "$ZSH_CONFIG/env.zsh"
source "$ZSH_CONFIG/plugins.zsh"
source "$ZSH_CONFIG/highlight.zsh"
source "$ZSH_CONFIG/aliases.zsh"
source "$ZSH_CONFIG/functions.zsh"
source "$ZSH_CONFIG/completion.zsh"
source "$ZSH_CONFIG/fzf.zsh"

eval "$(oh-my-posh init zsh --config "$HOME/dotfiles/oh-my-posh/config.omp.json")"
