default: web-dev

alias wb := build-web
alias p := precommit-run-all
alias re := restore-env
alias rde := restore-dev-env

restore-dev-env:
  [ -d '.venv' ] || (uv sync --all-groups --frozen && uv run pre-commit install)

restore-env:
  [ -d '.venv' ] || uv sync --no-dev --frozen

web-dev: restore-dev-env
  rm ./site/ -rf || true
  uv run --frozen mkdocs serve

gen-schemas: restore-dev-env
  uv run --frozen cpn-generate-schemas

build-web: restore-dev-env
  rm ./site/ -rf || true
  uv run --frozen mkdocs build
  rm ./site/schemas/ -rf || true
  mkdir ./site/schemas/ -p
  uv run --frozen cpn-generate-schemas
  cp ./schemas/* ./site/schemas
  uv run --frozen generate-schema-doc --config-file jsfh-conf.yaml ./site/schemas/ ./site/schemas/

clean:
  uvx cleanpy@0.5.1 .

precommit-run-all: restore-dev-env
  uv run --frozen --only-dev pre-commit run -a
