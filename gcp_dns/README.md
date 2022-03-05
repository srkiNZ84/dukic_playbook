# About

This is a playbook to bring up a DNS server in [GCP free tier](https://cloud.google.com/free/docs/gcp-free-tier#free-tier-usage-limits)

# How to run

docker build .

docker run -v `pwd`/config:/config `pwd`/ansible:/ansible -ti [id] bash

ansible-playbook -i hosts tasks.yml --connection=local
