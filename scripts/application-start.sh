#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo service gunicorn restart
sudo service nginx restart 

echo "The ApplicationStart deployment lifecycle event successfully completed." > application-start.txt
