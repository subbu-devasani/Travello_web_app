#!/bin/bash

systemctl daemon-reload
systemctl start gunicorn
systemctl enable gunicorn
systemctl restart gunicorn
systemctl restart nginx 

echo "The ApplicationStart deployment lifecycle event successfully completed." > application-start.txt
