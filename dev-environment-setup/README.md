# Universal Ubuntu Developer Environment Setup

This repository provides a **single-command installer** to set up a clean and consistent **developer environment** on any Ubuntu laptop (22.04 / 24.04).

It is designed to be:
- Safe (no system breakage)
- Reusable across machines
- Suitable for personal use and teams

---

## What Gets Installed

- VS Code
- Git
- Python (dev, pip, venv)
- Flake8, httpx
- PostgreSQL
- pgAdmin 4
- Docker Engine
- Docker Desktop
- DBeaver
- Postman
- Google Chrome

---

## What This Script Does NOT Touch

- Bluetooth
- Camera
- GNOME / Desktop stability
- LibreOffice
- Core Ubuntu system packages

---

## Supported Systems

- Ubuntu 22.04 LTS
- Ubuntu 24.04 LTS

---

## One-Command Installation

```bash
curl -fsSL https://raw.githubusercontent.com/Pallavi-Pandey/Blogs/main/dev-environment-setup/install.sh | bash
```

After installation, **log out and log back in** to use Docker without `sudo`.

---

## Verify Installation

```bash
./verify.sh
```

---

## Uninstall (Optional)

```bash
./uninstall.sh
```

---

## Notes

* The script is idempotent — safe to re-run
* Requires sudo access
* Internet connection required

---

## License

MIT License
