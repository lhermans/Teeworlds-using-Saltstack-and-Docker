#!/bin/bash

apt update && apt -y upgrade
echo $'Enter IP address of salt master:\n'
read SaltIP
#Edit hosts file.
echo ''$SaltIP ' salt' >> /etc/hosts
sudo apt-get -y install salt-minion
sudo apt-get -y install python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 
sudo pip install docker
sudo pip install docker-py
echo $'Enter minion name:\n'
read minionname
echo "id: "$minionname >> /etc/salt/minion
sudo systemctl restart salt-minion
echo "Done. Remember to add the key of this minion to your salt master."