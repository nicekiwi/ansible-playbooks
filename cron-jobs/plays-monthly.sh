#!/bin/bash

# Runs Monthly on the first day at 23:00 Hours

FILES="backup-ansible-server.yml"

cd /home/ezra/Documents/playbooks
:

for f in $FILES
do
 ansible-playbook $f --vault-password-file ~/.vault_pass.txt
done