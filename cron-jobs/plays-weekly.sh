#!/bin/bash

# Runs Weekly on Monday at 00:00 Hours

FILES="backup-server-all.yml"

cd /home/ezra/Documents/playbooks
:

for f in $FILES
do
 ansible-playbook $f --vault-password-file ~/.vault_pass.txt
done