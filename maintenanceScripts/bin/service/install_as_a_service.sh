#!/usr/bin/env bash

#Pass root pass as param
PASSWORD=$1

#Service files copying to disk
echo "$PASSWORD" | sudo -S cp ./piccashop.service  /etc/systemd/system/
echo "$PASSWORD" | sudo -S cp ./piccashop.sh /usr/local/bin/piccashop.sh
echo "$PASSWORD" | sudo -S chmod +x /usr/local/bin/piccashop.sh

#Enable the service with the command
echo "$PASSWORD" | sudo -S systemctl enable piccashop