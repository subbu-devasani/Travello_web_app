#!/bin/bash

git clone https://github.com/subbu-devasani/Travello_web_app.git
cd /home/ubuntu/Travello_web_app
sudo virtualenv venv
source venv/bin/activate
sudo apt-get install libpq-dev
sudo pip3 install -r requirments.txt
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
sudo python3 manage.py collectstatic
cd ..

echo "The AfterInstall deployment lifecycle event successfully completed." > after-install.txt
