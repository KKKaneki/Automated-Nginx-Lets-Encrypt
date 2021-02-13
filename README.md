# Nginx Automated Let's Encrypt
---
Shell script to enable https for nginx web server using let's encrypt 

#### Requirements
1) Nginx Web Server should be running
2) ```/etc/nginx/sites-available/default``` file should contain ```server_name your_domain_name.com``` 

#### Clone this script
```bash
https://github.com/KKKaneki/Nginx-Automated-Lets-Encrypt.git
```
#### Run Script
```bash
cd Nginx-Automated-Lets-Encrypt
chmod +x run.sh
./run.sh your_domain_name.com
```
This will ask you to choose to renew the certificate or reinstall the exisiting certificate. Choose whatever's best for you.
Again it will ask you whether you want to redirect HTTP traffic to HTTPS or not. Redirect HTTP to HTTPS will most probably will be the best option
