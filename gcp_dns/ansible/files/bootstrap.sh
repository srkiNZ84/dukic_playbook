#!/bin/bash

# Install Ansible
export DEBIAN_FRONTEND=noninteractive
apt update
apt upgrade
apt install -y ansible

# Tell server what type it is
echo "[dns]
127.0.0.1
" >> /etc/ansible/hosts

# TODO Pass server the secret

# TODO Get server to pull config from GitHub

# TODO Get server to run base config

# TODO Get server to run role specific config


