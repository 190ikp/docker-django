FROM python:3.6.8-slim-stretch

ENV REQUIREMENTS="Django==2.2"

WORKDIR /usr/src/app
COPY . .

RUN pip install --no-cache-dir ${REQUIREMENTS} \
    && apt autoremove

EXPOSE 8000