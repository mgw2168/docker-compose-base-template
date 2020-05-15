#!/bin/sh

until cd /djangoTest
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
python manage.py runserver --settings=djangoTest.settings
