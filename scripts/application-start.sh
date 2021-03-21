#!/bin/bash
cd /home/ubuntu/Travello_web_app

python3 manage.py collectstatic

sudo systemctl daemon-reload

sudo systemctl start gunicorn
sudo systemctl enable gunicorn

sudo service nginx restart

echo "The ApplicationStart deployment lifecycle event successfully completed." > application-start.txt
