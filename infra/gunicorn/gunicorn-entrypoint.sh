#!/bin/bash

cd /autoDE

# Starting Gunicorn -Gunicorn 'Green unicorn ' is a Python WSGI HTTP Server for Unix
echo "Starting API app Gunicorn "

exec /py/bin/gunicorn --bind 0.0.0.0:8000 --timeout 120 --workers 3 api.wsgi:application \
    --log-level=debug \
    --log-file=- \
    --access-logfile=- \
    --error-logfile=- --capture-output

echo "Started Gunicorn"


