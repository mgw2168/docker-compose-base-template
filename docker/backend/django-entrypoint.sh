#!/bin/sh

until cd /
do
    echo "Waiting for django volume..."
done

until python manage.py migrate --settings=quant_python_platform.settings
do
    echo "Waiting for mysql ready..."
    sleep 2
done

python manage.py loaddata fixtures.json --settings=quant_python_platform.settings
python manage.py runserver 0.0.0.0:8000 --settings=quant_python_platform.settings
