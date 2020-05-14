#!/bin/sh

echo `pwd`

until cd /djangoTest

echo `pwd`

do
    echo "Waiting for django volume..."
done

python manage.py makemigrations --settings=djangoTest.settings
until python manage.py migrate --settings=djangoTest.settings
do
    echo "Waiting for mysql ready..."
    sleep 2
done

python manage.py loaddata fixtures.json --settings=djangoTest.settings
python manage.py runserver 0.0.0.0:8000 --settings=djangoTest.settings
