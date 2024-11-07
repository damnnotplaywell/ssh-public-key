#!/bin/bash

# Create .ssh directory if it doesn't exist
mkdir -p /home/admin/.ssh

# Download and add the key using wget
wget -qO- https://raw.githubusercontent.com/damnnotplaywell/ssh-public-key/refs/heads/main/id_rsa.pub >> /home/admin/.ssh/authorized_keys

# Set correct permissions
chmod 700 /home/admin/.ssh
chmod 600 /home/admin/.ssh/authorized_keys

# Verify the key was added
echo "Key added. Current authorized_keys content:"
cat /home/admin/.ssh/authorized_keys