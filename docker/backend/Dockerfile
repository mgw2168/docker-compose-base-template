FROM python:3.7.7
MAINTAINER yiju yiju@parasynn.com

ENV PYTHONUNBUFFERED 1

COPY ./docker/backend/django-entrypoint.sh /
COPY .requirements.txt /djagoTest/requirements.txt


WORKDIR ./djagoTest

RUN pip install pip==20.0.2
RUN pip install -r requirements.txt