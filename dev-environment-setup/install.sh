#!/bin/bash
set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}==============================================${NC}"
echo -e "${BLUE}   Ubuntu Developer Environment Setup        ${NC}"
echo -e "${BLUE}==============================================${NC}"

# Update and install dependencies
echo -e "\n${GREEN}[1/5] Updating system and installing base dependencies...${NC}"
sudo apt update && sudo apt upgrade -y
sudo apt install -y \
  curl wget ca-certificates gnupg lsb-release \
  software-properties-common apt-transport-https git

# Ensure we have the scripts folder if running via curl
if [ ! -d "scripts" ]; then
  echo -e "${BLUE}Downloading modular installation scripts...${NC}"
  GIT_URL="https://github.com/Pallavi-Pandey/Blogs.git"
  git clone --depth 1 "$GIT_URL" .blogs-temp
  cd .blogs-temp/dev-environment-setup
fi

# Run modular scripts
echo -e "\n${GREEN}[2/5] Installing developer tools (VS Code, Chrome, etc.)...${NC}"
bash scripts/install_tools.sh

echo -e "\n${GREEN}[3/5] Setting up Python environment...${NC}"
bash scripts/install_python.sh

echo -e "\n${GREEN}[4/5] Installing PostgreSQL and pgAdmin...${NC}"
bash scripts/install_postgres.sh

echo -e "\n${GREEN}[5/5] Installing Docker Engine and Desktop...${NC}"
bash scripts/install_docker.sh

# Cleanup
echo -e "\n${GREEN}Finalizing and cleaning up...${NC}"
sudo apt autoremove -y
sudo apt autoclean

echo -e "\n${BLUE}==============================================${NC}"
echo -e "${GREEN}   Setup complete!                            ${NC}"
echo -e "${BLUE}   Please log out and log back in for Docker. ${NC}"
echo -e "${BLUE}==============================================${NC}"
