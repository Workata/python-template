# Dockerfile for app deployment

FROM python:3.13.0rc1-bookworm

RUN apt-get update

WORKDIR /workspace

# * install needed libs
COPY requirements/ requirements/
RUN pip install --upgrade pip
RUN pip3 install -r requirements/prod.txt

COPY ./app_name ./
CMD ["python", "./main.py"]
