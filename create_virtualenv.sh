#!/usr/bin/env bash

# This is not in use right now
set -e
pip3 install virtualenv
virtualenv -p python env

source env/bin/activate

pip3 install --upgrade -r requirements.txt

pip3 install -e .

deactivate