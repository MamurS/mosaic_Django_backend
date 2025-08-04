#!/usr/bin/env bash
set -o errexit
cd insurance_project
pip install -r requirements-prod.txt
python manage.py collectstatic --no-input
python manage.py migrate
