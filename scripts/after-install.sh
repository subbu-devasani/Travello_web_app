#!/bin/bash
cd /home/ubuntu/Travello_web_app
sudo virtualenv venv
source venv/bin/activate
sudo apt-get install libpq-dev
pip3 install -r requirments.txt
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic
cd ..

echo "The AfterInstall deployment lifecycle event successfully completed." > after-install.txt
