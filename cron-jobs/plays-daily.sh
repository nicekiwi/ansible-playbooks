#!/bin/bash

# Runs Daily at 22:00 Hours
# 0 22 * * * /home/ezra/Documents/ansible-playbooks/cron-jobs/plays-daily.sh >/dev/null 2>&1

DIR=`pwd -P`
FILES="backup-databases-all.yml"

# Change to cron-jobs directory
cd $DIR
:

# Change up one directory to ansible-playbooks
cd ..
:

for f in $FILES
do
 ansible-playbook $f --vault-password-file ~/.vault_pass.txt
done