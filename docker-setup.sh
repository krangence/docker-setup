#!/bin/bash
wget https://download.docker.com/linux/static/stable/x86_64/docker-17.03.2-ce.tgz
tar zxvf docker-17.03.2-ce.tgz
cp docker/* /usr/bin/
sudo rm /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
wget https://github.com/krangence/docker.git
sudo mv docker.service /etc/systemd/system/
sudo mv docker.socket /etc/systemd/system/
groupadd docker
systemctl daemon-reload
systemctl start docker
systemctl enable docker
