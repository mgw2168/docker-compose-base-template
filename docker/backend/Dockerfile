FROM python:3.7.7
MAINTAINER yiju yiju@parasynn.com

ENV PYTHONUNBUFFERED 1

COPY ./docker/backend/django-entrypoint.sh /
COPY ./requirements.txt /djagoTest/requirements.txt


WORKDIR ./djagoTest

RUN chmod 777 /django-entrypoint.sh
RUN pip install --default-timeout=1000 --no-cache-dir -r requirements.txt
