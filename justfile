default: web-dev

alias wb := build-web
alias r := restore-env

restore-env:
  [ -d '.venv' ] || uv sync --all-extras --frozen

bump-version: restore-env
  uv run cz bump --no-verify
  uv run pre-commit run -a
  git commit --amend --no-edit
  
gen-schemas: restore-env
  uv run generate-schemas
  
web-dev: restore-env
  rm ./site/ -rf || true
  uv run mkdocs serve

build-web: restore-env
  rm ./site/ -rf || true
  uv run mkdocs build
  rm ./site/schemas/ -rf || true
  mkdir ./site/schemas/ -p
  uv run generate-schemas
  cp ./schemas/* ./site/schemas
  uv run generate-schema-doc --config-file jsfh-conf.yaml ./site/schemas/ ./site/schemas/

clean: restore-env
  uvx cleanpy@0.5.1 .

precommit-run-all: restore-env
  uv run pre-commit run -a
