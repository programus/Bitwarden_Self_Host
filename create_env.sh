#!/usr/bin/env bash

echo ""
echo "Please input your public domain name of your bitwarden server:"
read DOMAIN_NAME
echo "Please input a real email address to receive information from letsencrypt:"
read EMAIL_ADDRESS
echo "Creating .env file..."
echo "VIRTUAL_HOST=${DOMAIN_NAME}" > ./.env
echo "LETSENCRYPT_HOST=${DOMAIN_NAME}" >> ./.env
echo "LETSENCRYPT_EMAIL=${EMAIL_ADDRESS}" >> ./.env
echo ".env file is created."
echo "===== .env ====="
cat .env
echo "================"
