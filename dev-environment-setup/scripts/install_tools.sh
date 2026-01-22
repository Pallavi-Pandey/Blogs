#!/bin/bash
set -e

# VS Code
if ! command -v code >/dev/null; then
  echo "Installing VS Code..."
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft.gpg >/dev/null

  echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" \
    | sudo tee /etc/apt/sources.list.d/vscode.list

  sudo apt update
  sudo apt install -y code
fi

# Git
echo "Ensuring Git is installed..."
sudo apt install -y git

# Chrome
if ! command -v google-chrome >/dev/null; then
  echo "Installing Google Chrome..."
  DEB_FILE="google-chrome.deb"
  trap 'rm -f $DEB_FILE' EXIT
  wget -O "$DEB_FILE" https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install -y ./"$DEB_FILE"
fi

# DBeaver & Postman
echo "Installing DBeaver and Postman via Snap..."
sudo snap install dbeaver-ce postman
