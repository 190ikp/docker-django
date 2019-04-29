<<<<<<< HEAD
FROM python:3.6.8-slim-stretch

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
=======
FROM python:3.6-alpine
LABEL maintainer="190ikp <ikp190[at]outlook.com>"

ENV PYTHONUNBUFFERED=1
ENV DJANGO_VER=2.2

RUN mkdir /usr/local/src
WORKDIR /usr/local/src
COPY requirements.sh /usr/local/src/

RUN pip install Django==${DJANGO_VER}

CMD ./requirements.sh && python manage.py runserver 0.0.0.0:8000
>>>>>>> 865f2991fb039c286539df5d6e79eb782c4f9fb4
