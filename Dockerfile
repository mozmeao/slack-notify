FROM python:3.7-slim-buster
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN adduser --uid 1000 --disabled-password --gecos '' meao
USER meao

ENTRYPOINT /usr/local/bin/slack-cli
