#!/bin/bash

project=my_rails6
user=ec2-user

rm -rf /var/tmp/${project}_deployment
mkdir /var/tmp/${project}_deployment
chown $user /var/tmp/${project}_deployment
chmod 755 /var/tmp/${project}_deployment
