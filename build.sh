#!/usr/bin/env bash
# exit on error
set -o errexit

# Install production dependencies from the root directory
pip install -r requirements-prod.txt

# Run Django commands by specifying the path to manage.py
python insurance_project/manage.py collectstatic --no-input
python insurance_project/manage.py migrate