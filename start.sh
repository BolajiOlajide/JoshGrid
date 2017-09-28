#!/bin/bash

set -e

if [[ $1 == "prod" ]]; then
    gunicorn joshgrid.wsgi
else
    yarn start:dev & python manage.py runserver
fi
