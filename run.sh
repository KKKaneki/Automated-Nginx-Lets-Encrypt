#!/bin/bash

if [ -z "$1" ]
then
    echo "Domain name argument not received."
    exit 1
elif [ -z "$2" ]
then
    # DOWNLOAD CERTBOT
    sudo apt install certbot python3-certbot-nginx

    # IF FIREWALL IS ENABLED ON THE MACHINE ALLOW NGINX
    sudo ufw allow "Nginx Full"

    # CREATE A SSL CERTIFICATE
    sudo certbot --nginx -d ${@: -1} -d www.${@: -1} && echo "Congratulation HTTPS is enabled for ${@: -1}" || echo "Make sure your nginx file has a server_name $1"
else 
    echo "Expect 1 argument."
fi