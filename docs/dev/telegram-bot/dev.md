# Dev

### Local

```sh
just d
```

!!! info

    Docker compose will build image, watch changes by default

!!! warn

    If you change README.md, pyproject.toml, it will reinstall deps (not cache). So...

```sh
just docker-prune # (1)
```

1. clean old cached layers

### Deploy to railway

... to be continue
