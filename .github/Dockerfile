# Dockerfile for CI/CD

FROM python:3.13.0rc1-bookworm

RUN apt-get update

WORKDIR /workspace

# * install needed libs
COPY requirements/ requirements/
RUN pip install --upgrade pip
RUN pip3 install -r requirements/dev.txt

# * copy source and configs
COPY ./src ./src
COPY pyproject.toml .
