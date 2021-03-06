#!/bin/sh

until cd /djangoTest
do
    echo "Waiting for django volume..."
done

python manage.py collectstatic --noinput

python manage.py makemigrations --settings=djangoTest.settings

until python manage.py migrate --settings=djangoTest.settings
do
    echo "Waiting for mysql ready..."
    sleep 2
done

python manage.py runserver 0.0.0.0:8000 --settings=djangoTest.settings
