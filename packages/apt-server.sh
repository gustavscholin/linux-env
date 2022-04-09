#!/bin/bash

set -euxo pipefail

sudo apt-get install -y \
  htop \
  neofetch \
  tldr \
  nmap \
  postgresql-client \
  python-is-python3 \
  bat \
  zsh \
  fzf \
  autojump \
  git-extras \
  shellcheck \
  direnv \
  whois \
  jq \
  tmux \
  jo \
  httpie

if [ "$(uname -m)" != "aarch64" ]; then
  sudo apt-get install -y \
    exa \
    duf \
    ripgrep \
    jc
else
  echo "ARM architecture detected, skipping some packages"
fi
