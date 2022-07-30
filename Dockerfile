FROM python:3.7-alpine

RUN apk -U upgrade && apk add \
    git

RUN python3 -m pip install --upgrade pip
    
RUN pip3 install pre-commit
