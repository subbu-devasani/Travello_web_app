#!/bin/bash
cd /home/ubuntu/Travello_web_app
sudo service nginx restart

echo "The ValidateService deployment lifecycle event successfully completed." > validate-service.txt

unset FOLDER
