set quiet
set dotenv-load
set export
set allow-duplicate-recipes
set allow-duplicate-variables

alias t := test

src := "src"

# List commands
_default:
    just --list --unsorted --justfile {{ justfile() }} --list-heading $'Available commands:\n'

# Set up base tools
setup:
  curl -LsSf https://astral.sh/uv/install.sh | sh
  uv tool install ruff
  uv tool install build
  uv tool install twine
  
# Install dependencies
bootstrap:
  uv install

# Update the project
update:
  uv sync --all-extras

# Lock the dependencies
lock:
  uv lock

# Lint the project
lint *ARGS='.':
  -uvx ruff check {{ ARGS }}

# Check the types in the project
type *ARGS='.':
  -uv run mypy {{ ARGS }}  # need to run through uv to see installed dependencies

# Benchmark the project
benchmark:
  -uv run pytest tests/benchmarks/ --benchmark-only --benchmark-compare

# Run the tests
test *ARGS='':
  -uv run pytest {{ ARGS }}

# Run coverage on the code
coverage:
  -uv run pytest --cov={{ src }}

# Run all the dev things
dev:
  just lint
  just type
  just coverage

# Run the development server
serve port='8000':
  uv run python3 manage.py runserver 0:{{ port }}

# Run documentation site
docs-serve:
  uv run sphinx-autobuild -W docs/source docs/build

# Build documentation site
docs-build:
  cp CHANGELOG.md docs/source/changelog.md
  uv run sphinx-build -W docs/source docs/build

# Build the package
build:
  just test
  just docs-build
  rm -rf dist/*
  uvx --from build pyproject-build --installer uv

# Build and publish the package to test PyPI and prod PyPI
publish:
  just build
  uvx twine check dist/*
  uvx twine upload -r testpypi dist/*
  echo
  uvx twine upload -r pypi dist/*  # need to look at uv publish, but not sure about support for test.pypi.org
