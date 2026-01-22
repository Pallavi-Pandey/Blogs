#!/bin/bash
set -e

echo "Installing PostgreSQL..."
sudo apt install -y postgresql postgresql-client
sudo systemctl enable postgresql
sudo systemctl start postgresql

if [ ! -f "/etc/apt/sources.list.d/pgadmin4.list" ]; then
  echo "Setting up pgAdmin 4 repository..."
  curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub \
    | sudo gpg --dearmor -o /usr/share/keyrings/pgadmin.gpg

  echo "deb [signed-by=/usr/share/keyrings/pgadmin.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" \
  | sudo tee /etc/apt/sources.list.d/pgadmin4.list
  sudo apt update
fi

echo "Installing pgAdmin 4 Desktop..."
sudo apt install -y pgadmin4-desktop
