# poetry-docker

[![Publish to docker hub](https://github.com/JoelClemence/poetry-docker/actions/workflows/push.yaml/badge.svg)](https://github.com/JoelClemence/poetry-docker/actions/workflows/push.yaml)

Docker container for [Poetry](https://python-poetry.org/)

Available tags:

- `LATEST` - Python v3.9.1 / Poetry 1.1.6
- `py3.9-1.1.6` - Python v3.9.1 / Poetry 1.1.6
- `py3.8-1.1.6` - Python v3.8.6 / Poetry 1.1.6
- `py3.7-1.1.6` - Python v3.7.9 / Poetry 1.1.6
- `py3.6-1.1.6` - Python v3.6.13 / Poetry 1.1.6
- `py3.9-1.1.4` - Python v3.9.1 / Poetry 1.1.4
- `py3.8-1.1.4` - Python v3.8.6 / Poetry 1.1.4
- `py3.7-1.1.4` - Python v3.7.9 / Poetry 1.1.4

## Usage

```bash
$ docker pull joelclemence/poetry:LATEST
...

$ docker run -it --rm joelclemence/poetry:LATEST --version
Poetry version 1.1.6
```
