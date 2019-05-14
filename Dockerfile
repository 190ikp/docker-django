FROM python:3.6.8-slim-stretch

ARG requirements="Django==2.2"

WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir ${requirements}

EXPOSE 8000