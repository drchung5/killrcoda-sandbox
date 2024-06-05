#!/bin/bash

echo "foreground.sh"

echo "Install JDK 11 "
apt-get update > /dev/null 2>&1
sudo apt-get install -y openjdk-11-jdk-headless  < "/dev/null" > /dev/null 2>&1 

until [[ -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'
done

echo "JDK 11 installation complete"