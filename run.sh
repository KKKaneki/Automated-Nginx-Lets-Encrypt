#!/bin/bash


if [ $# -eq 0];
then
    echo "Domain Name argument not received"
    exit 1
else
    # DOWNLOAD CERTBOT
    sudo apt install certbot python3-certbot-nginx

    # IF FIREWALL IS ENABLED ON THE MACHINE ALLOW NGINX
    sudo ufw allow "Nginx Full"

    # CREATE A SSL CERTIFICATE
    sudo certbot --nginx -d $1 -d www.$1 && echo "Congratulation HTTPS is enabled for $1" || echo "Make sure your nginx has a server_name"
    exit 0
fi