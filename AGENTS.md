# AGENTS.md

## Cursor Cloud specific instructions

Minimal Python 3.12 project with a single entry point.

### Prerequisites

- Python 3.12+ (`python3`)
- `python3.12-venv` system package (needed to create virtualenvs; pre-installed in the VM snapshot)

### Quick reference

| Action | Command |
|--------|---------|
| Run app | `source .venv/bin/activate && python src/main.py` |
| Lint | `source .venv/bin/activate && ruff check .` |
| Format check | `source .venv/bin/activate && ruff format --check .` |
| Tests | `source .venv/bin/activate && pytest -v` |

### Notes

- Virtualenv lives at `.venv/` in the project root.
- Dev dependencies (`ruff`, `pytest`) are in `requirements-dev.txt`; project dependencies in `requirements.txt`.
- All tool configuration (ruff, pytest) is in `pyproject.toml`.
