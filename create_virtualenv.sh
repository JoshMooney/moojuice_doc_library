#!/usr/bin/env bash

# This is not in use right now
set -e
pip install virtualenv
virtualenv -p python3 env

source env/bin/activate

pip install --upgrade -r requirements.txt

pip install -e .

deactivate