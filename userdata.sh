#!/bin/bash
yum update -y
amazon-linux-extras install epel -y
yum install git -y
yum install -y python3-pip
python3 -m pip install --user --upgrade pip
python3 -m pip install ansible

cd /home/ec2-user/
git clone https://github.com/MMeerim/configure_host.git
ansible-playbook -i provisioning.yaml
