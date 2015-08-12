#!/bin/bash

# Runs Weekly on Monday at 00:00 Hours
# 0 0 * * 1 /home/ezra/Document/ansible-playbooks/cron-jobs/plays-weekly.sh >/dev/null 2>&1

DIR=`pwd -P`
FILES="backup-server-all.yml"

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