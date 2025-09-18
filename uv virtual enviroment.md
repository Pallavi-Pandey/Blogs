# Using `uv` with Python Projects

### 1. Initialize project

```bash
uv init
```

Creates `pyproject.toml` with basic metadata.

---

### 2. Add dependencies

```bash
uv add fastapi
uv add "uvicorn[standard]"
```

Updates `pyproject.toml` and `uv.lock`.

---

### 3. Sync environment

```bash
uv sync
```

Creates `.venv/`, installs everything, and generates `uv.lock`.

---

### 4. Files explained

* **`pyproject.toml`** → Your wishlist
  What packages you want (with version ranges).
  Example:

  ```toml
  [project]
  name = "art-backend-v2"
  version = "0.1.0"
  requires-python = "==3.10.12"

  [tool.uv]
  index-url = "https://pypi.org/simple"
  ```

* **`uv.lock`** → The receipt
  Exact pinned versions + hashes for reproducibility.
  Example snippet:

  ```toml
  [[package]]
  name = "fastapi"
  version = "0.115.2"
  ```

---

### 5. Share with team

* Commit both `pyproject.toml` and `uv.lock` to git.
* Do not commit `.venv/`.

---

### 6. Recreate environment

For teammates or CI/CD:

```bash
uv sync --frozen
```

Installs exact versions from `uv.lock`.
If `pyproject.toml` and `uv.lock` don’t match, it errors.

---

### 7. Update dependencies

* Upgrade a package:

  ```bash
  uv add fastapi@latest
  ```
* Upgrade everything:

  ```bash
  uv lock --upgrade
  uv sync
  ```

---

### 8. Run code

```bash
uv run python main.py
```

Ensures execution happens inside the managed `.venv`.

---

**Summary:**

* `pyproject.toml` → what you want
* `uv.lock` → what you got
* `uv sync` → makes them real

---
