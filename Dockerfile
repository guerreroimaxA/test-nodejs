FROM python:3.7-alpine

RUN apk -U upgrade && apk add --no-cache \
    git

RUN python3 -m pip install --no-cache-dir --upgrade pip=22.0.2 && pip3 install --no-cache-dir \
    pre-commit=2.20.0
