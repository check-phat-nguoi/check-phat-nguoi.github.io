default: web-dev

alias w := build-web
alias s := gen-schemas
alias r := restore-env
alias p := precommit-run-all

restore-env:
  [ -d '.venv' ] || uv sync --all-extras

gen-schemas:
  uv run generate-schemas

web-dev:
  rm ./site/ -rf || true
  uv run mkdocs serve

build-web:
  rm ./site/ -rf || true
  uv run mkdocs build
  rm ./site/schemas/ -rf || true
  mkdir ./site/schemas/ -p
  uv run generate-schemas
  cp ./schemas/* ./site/schemas
  uv run generate-schema-doc --config-file jsfh-conf.yaml ./site/schemas/ ./site/schemas/

clean:
  uvx cleanpy@0.5.1 .

precommit-run-all:
  uv run pre-commit run -a
