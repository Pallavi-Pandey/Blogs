#!/bin/bash

sudo apt purge -y \
  code git postgresql postgresql-client pgadmin4 \
  docker-ce docker-ce-cli containerd.io \
  python3-dev python3-pip python3-venv

sudo snap remove dbeaver-ce postman

sudo apt autoremove -y
sudo apt autoclean

echo "Developer tools removed."
