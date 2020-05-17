FROM python:3.7.7
MAINTAINER yiju yiju@parasynn.com

ENV PYTHONUNBUFFERED 1

COPY ./docker/backend/django-entrypoint.sh /
COPY ./requirements.txt /djangoTest/requirements.txt


WORKDIR /djangoTest

RUN chmod 777 /django-entrypoint.sh
RUN pip install uwsgi -i https://pypi.tuna.tsinghua.edu.cn/simple/
RUN pip install --default-timeout=1000 --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
