#!/bin/bash

# Runs Daily at 22:00 Hours

FILES="backup-databases-all.yml"

cd /home/ezra/Documents/playbooks
:

for f in $FILES
do
 ansible-playbook $f --vault-password-file ~/.vault_pass.txt
done