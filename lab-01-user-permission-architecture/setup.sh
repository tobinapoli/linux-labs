#!/bin/bash

sudo groupadd developers
sudo useradd -m -G developers dev1
sudo useradd -m -G developers dev2
sudo useradd -m auditor

sudo mkdir -p /srv/app
sudo chown :developers /srv/app
sudo chmod 770 /srv/app

echo "Lab setup completed."

