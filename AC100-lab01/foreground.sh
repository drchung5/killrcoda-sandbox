#!/bin/bash

set +x

echo "foreground.sh"

echo -n "Install JDK 11 "
apt-get update > /dev/null 2>&1
sudo apt-get install -y openjdk-11-jdk-headless  < "/dev/null" > /dev/null 2>&1 

until [[ -e /usr/lib/jvm/java-11-openjdk-amd64 && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'
done

echo "JDK 11 installation complete"

set -x