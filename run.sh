#!/bin/bash

# DOWNLOAD CERTBOT
sudo apt install certbot python3-certbot-nginx

# IF FIREWALL IS ENABLED ON THE MACHINE ALLOW NGINX
sudo ufw allow "Nginx Full"

# CREATE A SSL CERTIFICATE
sudo certbot --nginx -d $0 -d www.$0

echo "Congratulation HTTPS is enabled for $0"