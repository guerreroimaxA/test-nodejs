FROM python:3.7-alpine

RUN apk -U upgrade && apk add \
    git

RUN python3 -m pip install --no-cache-dir --upgrade pip && pip3 install --no-cache-dir \
    pre-commit
