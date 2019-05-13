FROM python:3.6.8-slim-stretch

ENV REQUIREMENTS="requirements.txt"

WORKDIR /usr/src/app

COPY requirements.sh ./requirements.sh
COPY . .
RUN pip install --no-cache-dir Django==2.2 \
    && chmod +x /usr/src/app/requirements.sh
EXPOSE 8000

CMD './requirements.sh'