#!/bin/bash
set -e

if command -v docker >/dev/null; then
  echo "Docker is already installed. Skipping..."
  exit 0
fi

echo "Installing Docker Engine..."
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker "$USER"

if ! command -v docker-desktop >/dev/null; then
  echo "Installing Docker Desktop..."
  DEB_FILE="docker-desktop.deb"
  trap 'rm -f $DEB_FILE' EXIT
  wget -O "$DEB_FILE" https://desktop.docker.com/linux/main/amd64/docker-desktop.deb
  sudo apt install -y ./"$DEB_FILE"
fi
