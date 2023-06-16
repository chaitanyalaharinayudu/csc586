#!bin/bash

#generate passwordless SSH
runuser -u cn991537 -- ssh-keygen -q -t rsa -f /users/cn991537/.ssh/id_rsa -N ''
runuser -u cn991537 -- cat /users/cn991537/.ssh/id_rsa.pub >> /users/cn991537/.ssh/authorizes_keys 

#setup NFS for key sharing
apt update
apt install -y nfs-kernel-server
mkdir /var/nfs/keys -p
cp /users/cn991537/.ssh/id_rsa* /var/nfs/keys
chown nobody:nogroup /var/nfs/keys
echo "/var"
systemctl restart nfs-kernel-server


