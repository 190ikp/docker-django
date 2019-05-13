FROM python:3.6.8-slim-stretch

WORKDIR /usr/src/app

COPY requirements.sh ./requirements.sh
COPY . .
RUN chmod +x /usr/src/app/requirements.sh && pip install --no-cache-dir Django==2.2
EXPOSE 8000

CMD './requirements.sh'