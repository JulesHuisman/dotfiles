# Dotfiles

## Prerequisites

- [chezmoi](https://www.chezmoi.io/install/)
- [1Password](https://1password.com/downloads/) with CLI tools enabled

## Setup

1. Install chezmoi and the dotfiles.
```bash
chezmoi init --apply https://github.com/JulesHuisman/dotfiles
```

This will automatically:
- Install Homebrew packages from `Brewfile`
- Install all VSCode extensions
- Apply shell, git, and SSH config