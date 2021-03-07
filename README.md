# Bitwarden Self Host with LetsEncrypt

This is a forked repository from [JulianRunnels/Bitwarden_Self_Host](https://github.com/JulianRunnels/Bitwarden_Self_Host), which is using certs created by [Let's Encrypt](https://letsencrypt.org/) so modern browsers will not show an exception. Also the default docker-compose.yml is for Raspberry Pi.

__To use the content of this project, a public domain for your server is NECESSARY. If you do not have a domain, you can get one or use the [original](https://github.com/JulianRunnels/Bitwarden_Self_Host) repository.__


This project is aimed at creating a private Bitwarden instance on your local LAN for devices on your personal network to be able to access. The docker-compose files contains 4 containers, the bitwarden unoffical rust backend, an nginx reverse proxy for HTTPS, the letsencrypt to generate or renew certs and a backup container. 

__PLEASE NOTE THAT THIS SETUP USES [BITWARDEN_RS](https://github.com/dani-garcia/bitwarden_rs) WHICH IS AN UNOFFICAL COMMUNITY CREATED BACKEND. IT IS REGULARLY UPDATED AND HAS SEVERAL ADVANTAGES INCLUDING ABILITY TO RUN ON RASPBERRY PI, A MUCH LOWER OVERALL RESOURCE FOOTPRINT, AND FULL BITWARDEN FUNCTIONALITY, INCLUDING PREMIUM FEATURES__

## To install ##
__Note: to install on a PC, you will need up update the tags for the containers in docker-compose.yml with the values in the comments of that page__

1. `git clone https://github.com/programus/Bitwarden_Self_Host.git`
2. `cd Bitwarden_Self_Host`
3. `chmod +x ./setup.sh`
4. `sudo ./setup.sh`

The setup script will guide you complete your setup. 

Once you done the setup and ensure you have your domain and IP address set correctly, spin up the containers:
* `sudo docker-compose up -d`

You should now be able to access your instance at https://your.domain

> The `your.domain` here is the domain name you input while setting up. A public domain is NECESSARY. 


