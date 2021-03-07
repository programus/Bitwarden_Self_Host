#!/usr/bin/env bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

export BASE_DIR=$(dirname $0)

cd ${BASE_DIR}

echo ""
echo "Would you like to install docker through this script? (If you already have Docker installed, this script can cause trouble.)"
select yn in "Yes" "No"; do
    case $yn in
	Yes ) ./get-docker.sh && break;;
	No ) echo "Skipped docker installation." && break;;
    esac
done
echo ""
echo "Would you like to start docker now?"
select yn in "Yes" "No"; do
    case $yn in
	Yes ) service docker enalbe && usermod -aG docker $USER && break;;
	No ) echo "Skipped docker installation." && break;;
    esac
done
echo ""
echo "Would you like to install docker-compose?"
select yn in "Yes" "No"; do
    case $yn in
	Yes ) apt install -y libffi-dev libssl-dev python3 python3-pip && pip3 install docker-compose && break;;
	No ) echo "Skipped docker installation." && break;;
    esac
done

echo ""
echo "Would you like to set domain for letsencrypt?"
select yn in "Yes" "No"; do
    case $yn in
	Yes ) ./create_env.sh && break;;
	No ) echo "Make sure to set VIRTUAL_HOST, LETSENCRYPT_HOST, LETSENCRYPT_EMAIL in .env correctly before you start docker-compose. " && break;;
    esac
done
echo ""
echo "Docker and Docker-Compose have been installed, it is recommended to restart to make sure everything is installed correctly"
echo "Would you like to restart?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo reboot && break;;
        No ) exit;;
    esac
done

