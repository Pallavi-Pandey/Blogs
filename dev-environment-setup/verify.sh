#!/bin/bash

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=============================${NC}"
echo -e "${BLUE}  System Verification        ${NC}"
echo -e "${BLUE}=============================${NC}"

check_cmd() {
  if command -v "$1" >/dev/null; then
    echo -e "${GREEN}[OK]${NC} $2"
  else
    echo -e "${RED}[MISSING]${NC} $2"
  fi
}

check_cmd "code" "VS Code"
check_cmd "git" "Git"
check_cmd "python3" "Python"
check_cmd "psql" "PostgreSQL"
check_cmd "docker" "Docker"
check_cmd "pgadmin4" "pgAdmin"
check_cmd "postman" "Postman"
check_cmd "google-chrome" "Chrome"
check_cmd "dbeaver-ce" "DBeaver"

echo -e "${BLUE}=============================${NC}"
echo -e "Verification completed."
