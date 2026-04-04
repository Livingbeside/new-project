# AGENTS.md

## Cursor Cloud specific instructions

This is a minimal Python 3.12 project.

### Prerequisites

- Python 3.12+ (available as `python3` on the system)
- `python3.12-venv` system package (needed to create virtualenvs)

### Running the project

```bash
source .venv/bin/activate
python src/main.py
```

### Linting

```bash
source .venv/bin/activate
ruff check .
ruff format --check .
```

### Testing

```bash
source .venv/bin/activate
pytest -v
```

### Notes

- The virtualenv is at `.venv/` in the project root.
- Dev dependencies (`ruff`, `pytest`) are listed in `requirements-dev.txt`.
- Project dependencies (currently none) are in `requirements.txt`.
- Configuration for ruff and pytest is in `pyproject.toml`.
