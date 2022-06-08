#!/bin/bash

# Install Ansible
export DEBIAN_FRONTEND=noninteractive
apt update
apt upgrade
apt install -y ansible git

# Tell server what type it is
echo "[dns]
127.0.0.1
" >> /etc/ansible/hosts

# TODO Pass server the secret

# TODO Get server to pull config from GitHub
ansible-pull -C add-gcp-free-tier-dns-server -U https://github.com/srkiNZ84/dukic_playbook.git gcp_dns/ansible/playbook.yml 

# TODO Get server to run base config

# TODO Get server to run role specific config


