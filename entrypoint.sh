#!/bin/bash

# Apply DB migrations
conda run -n blogenv python manage.py migrate

# Collect static files for admin CSS/JS
conda run -n blogenv python manage.py collectstatic --noinput

# Start the Django server (you can use gunicorn here instead)
conda run -n blogenv python manage.py runserver 0.0.0.0:8000
