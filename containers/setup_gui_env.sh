#!/bin/bash

set -e

uid=$1
gid=$2

echo "Setting up for X11..."

mkdir -p /home/developer
mkdir -p /etc/sudoers.d

echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" \
     >> /etc/passwd
echo "developer:x:${uid}:" >> /etc/group
echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
chmod 0440 /etc/sudoers.d/developer
chown ${uid}:${gid} -R /home/developer

echo "Done!"
