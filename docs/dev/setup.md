# Setup

Requirements:

- [uv](https://github.com/astral-sh/uv)
- [just](https://github.com/casey/just)
- Setup ssh

---

## Clone repo dev

```sh
git clone --recursive -j 4 git@github.com:check-phat-nguoi/cpn.git
```

Restore venv

```sh
just
```

---

## CLI Tool

!!! note "Path"

    `packages/cli/`

```sh
just
```

---

## Docs

!!! note "Path"

    `packages/docs/`

Dev web

```sh
just
```

Build web

```sh
just wb
```
