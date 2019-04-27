FROM python:3.6-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /usr/local/src
WORKDIR /usr/local/src
ADD requirements.txt /usr/local/src/
RUN pip install -r requirements.txt
ADD . /usr/local/src/