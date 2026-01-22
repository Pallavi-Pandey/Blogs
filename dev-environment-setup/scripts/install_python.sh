#!/bin/bash
set -e

echo "Installing Python dev tools and pip..."
sudo apt install -y \
  python3-dev \
  python3-pip \
  python3-venv

echo "Installing Python packages (flake8, httpx)..."
pip3 install --user flake8 httpx
