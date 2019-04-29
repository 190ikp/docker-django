FROM python:3.6-alpine
LABEL maintainer="190ikp <ikp190[at]outlook.com>"

ENV PYTHONUNBUFFERED=1
ENV DJANGO_VER=2.2

RUN mkdir /usr/local/src
WORKDIR /usr/local/src
COPY requirements.sh /usr/local/src/

RUN pip install Django==${DJANGO_VER}

CMD ./requirements.sh && python manage.py runserver 0.0.0.0:8000