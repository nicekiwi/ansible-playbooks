#!/bin/bash

# Runs Monthly on the first day at 23:00 Hours

DIR=`pwd -P`
FILES="backup-ansible-server.yml"

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