#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y install nginx

# remove default site from sites enabled
unlink /etc/nginx/sites-enabled/default

echo 'Ready to configure, read the install.sh script for how-to'

# After you install nginx...
#
# create a site in the /etc/nginx/site-availalbe/ folder
# using the syntax example below
#
# Example
# server {
#    listen 80;
#    server_name www.example.com example.com;
#    location / {
#         proxy_pass http://192.x.x.2;
#    }
# }
#
# Add these to the location if you want to pass it to a an apache server
# proxy_set_header Host $host;
# proxy_set_header X-Real-IP $remote_addr;
# proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
# proxy_set_header X-Forwarded-Proto $scheme;
# 
#
# Then make a link from the sites-available folder to the sites-enabled folder
# sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/example.com
# 
# sudo service nginx configtest
# sudo service nginx restart
