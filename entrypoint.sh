#!/bin/bash
# Run database migrations
conda run -n blogenv python manage.py migrate

# Start Django server
conda run -n blogenv python manage.py runserver 0.0.0.0:8000
