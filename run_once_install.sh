#!/bin/bash
set -e

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from Brewfile
echo "Installing Homebrew packages..."
brew bundle --file="$HOME/Brewfile"

# Install VSCode extensions
if command -v code &>/dev/null; then
  echo "Installing VSCode extensions..."
  extensions=(
    bradlc.vscode-tailwindcss
    charliermarsh.ruff
    esbenp.prettier-vscode
    github.copilot-chat
    hashicorp.terraform
    mechatroner.rainbow-csv
    miguelsolorio.fluent-icons
    ms-azure-devops.azure-pipelines
    ms-azuretools.vscode-azureresourcegroups
    ms-azuretools.vscode-containers
    ms-azuretools.vscode-docker
    ms-python.black-formatter
    ms-python.debugpy
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-python.vscode-python-envs
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode.cpptools
    ms-vscode.remote-explorer
    redhat.vscode-xml
    redhat.vscode-yaml
    samuelcolvin.jinjahtml
    tamasfe.even-better-toml
    vscodevim.vim
    waderyan.gitblame
    zhuangtongfa.material-theme
  )

  for ext in "${extensions[@]}"; do
    code --install-extension "$ext" --force
  done
fi

echo "Setup complete."
