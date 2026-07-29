# zsh-config

Personal zsh configuration.

## Components

- zsh
- oh-my-zsh
- zsh-autosuggestions
- zsh-syntax-highlighting

## Prompt

Using Oh My Posh.

The theme is managed by the [omp-config](https://github.com/Scawer132/omp-config) repository and shared with PowerShell as a submodule at `dotfiles/oh-my-posh/`.

## Structure

- .zshrc
    Entry point

- config/
    Modular configuration files

- legacy/
    Historical configurations

## Submodule

This repository is used as a submodule of [dotfiles](https://github.com/Scawer132/dotfiles). The oh-my-posh theme is a separate submodule — to modify the prompt, edit the omp-config repository directly.
