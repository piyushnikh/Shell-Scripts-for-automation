#!/bin/bash

# This script copies file from one server to another. The input for server-names is the /etc/hosts/ file.

# Prerequisite is that passwordless-authentication should be setup for user accounts.

SERVER_LIST=$(cat /etc/hosts | cut -d " " -f 1)

for SERVER in $SERVER_LIST

do

scp /home/ansible/*.sh $(id -nu)@$SERVER:/home/ansible

done
