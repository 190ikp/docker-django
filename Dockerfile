FROM python:3.6-alpine
LABEL maintainer="190ikp <ikp190[at]outlook.com>"

ENV PYTHONUNBUFFERED=1
ENV DJANGO_VER=2.2

RUN mkdir /usr/local/src
WORKDIR /usr/local/src

COPY requirements.* /usr/local/src/
RUN pip install Django==${DJANGO_VER} && \
    chmod +x requirements.sh && ./requirements.sh

ADD . /usr/local/src/