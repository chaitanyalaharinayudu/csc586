#!bin/bash

#generate passwordless SSH
runuser -u cn991537 -- ssh-keygen -q -t rsa -f /users/cn991537/.ssh/id_rsa -N ''
runuser -u cn991537 -- cat /users/cn991537/.ssh/id_rsa.pub >> /users/cn991537/.ssh/authorizes_keys 
