#!/bin/bash
conda run -n blogenv python manage.py migrate
conda run -n blogenv python manage.py collectstatic --noinput
conda run -n blogenv python manage.py runserver 0.0.0.0:8000
