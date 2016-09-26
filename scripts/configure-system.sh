#!/bin/bash

echo -e "10.31.81.10\tnodecontroller" >> /etc/hosts

# Restrict SSH connections to local port bindings and ethernet card subnet
sed -i 's/^#ListenAddress ::$/ListenAddress 127.0.0.1/' /etc/ssh/sshd_config
sed -i 's/^#ListenAddress 0.0.0.0$/ListenAddress 10.31.81.51/' /etc/ssh/sshd_config 
