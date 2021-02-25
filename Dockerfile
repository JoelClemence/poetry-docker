FROM ubuntu:20.04 AS BUILDER

ARG PYTHON_VERSION
ARG POETRY_VERSION="1.1.4"

ENV PYENV_ROOT /pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:/root/.poetry/bin:$PATH
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install -y \
    curl \
    build-essential \
    bzip2 \
    gcc \
    git \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    openssl \
    sqlite \
    zlib1g-dev \
    && git clone https://github.com/pyenv/pyenv.git /pyenv \
    && pyenv install ${PYTHON_VERSION} \
    && pyenv rehash \
    && pyenv global ${PYTHON_VERSION} \
    && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version $POETRY_VERSION

ENTRYPOINT ["poetry"]