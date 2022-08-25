#!/bin/bash

echo "This script automatizes the process of updating Ubuntu, installing Apache2, installing Unzip, downloading and deploying an application on the default Apache directory."

echo "Updating Ubuntu"

apt update -y
apt upgrade -y

echo "Installing Apache2"

apt install apache2 -y

echo "Installing Unzip"

apt install unzip -y

echo "Downloading and deploying the application on Apache directory"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip -d /var/www/html

rm -rf main.zip

echo "Process successfully concluded"
