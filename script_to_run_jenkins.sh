#!/bin/bash

# Pull latest container
docker pull jenkins/jenkins:2.150.3

# Setup local configuration folder
# Should already be in a jenkins folder when running this script.
export CONFIG_FOLDER=$PWD/config
mkdir $CONFIG_FOLDER
chown 1000 $CONFIG_FOLDER

# Start container
docker run --restart=always -d -p 8080:8080 \
-v $CONFIG_FOLDER:/var/jenkins_home:z \
--name jenkins -t jenkins/jenkins:2.150.3

docker logs --follow jenkins