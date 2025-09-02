# Installation Guide for Development Tools on Ubuntu

This document provides step-by-step instructions to install commonly used development tools on Ubuntu.

---

## 1. Install Git

```bash
sudo apt update
sudo apt install git -y
git --version
```

---

## 2. Install Visual Studio Code (VS Code)

### Method 1: Install via Apt (Microsoft Repo)

```bash
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
```

Launch:

```bash
code
```

### Method 2: Install via Snap

```bash
sudo snap install code --classic
```

---

## 3. Install Windsurf IDE

### Official Apt Repository Installation

```bash
sudo apt-get install wget gpg -y
wget -qO- "https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/windsurf.gpg" | gpg --dearmor > windsurf-stable.gpg
sudo install -D -o root -g root -m 644 windsurf-stable.gpg /etc/apt/keyrings/windsurf-stable.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/windsurf-stable.gpg] https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt stable main" | sudo tee /etc/apt/sources.list.d/windsurf.list > /dev/null
rm -f windsurf-stable.gpg
```
```
sudo apt install apt-transport-https -y
sudo apt update
```
```
sudo apt install windsurf -y
```

### Launch Windsurf

```bash
windsurf
```

---

## 4. Install Postman

### Method 1: Snap (Recommended)

```bash
sudo snap install postman
```

---

## 5. Install pgAdmin

### Method 1: Apt Repository (Recommended)

```bash
sudo apt update
sudo apt install curl ca-certificates gnupg -y
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/pgadmin.gpg
echo "deb [signed-by=/usr/share/keyrings/pgadmin.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" | sudo tee /etc/apt/sources.list.d/pgadmin4.list
sudo apt update
sudo apt install pgadmin4 -y
```

### Method 2: Snap

```bash
sudo snap install pgadmin4
```

---

# Summary

* **Git** → Version control system
* **VS Code** → Code editor
* **Windsurf IDE** → AI-powered editor
* **Postman** → API testing tool
* **pgAdmin** → PostgreSQL management tool
