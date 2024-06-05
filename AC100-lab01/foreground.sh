#!/bin/bash

echo "foreground.sh"

echo -n "Install JDK 11 "

apt-get update > /dev/null 2>&1

sudo apt-get install -y openjdk-11-jdk openjdk-11-jre < "/dev/null" > /dev/null 2>&1

until [[ -e /usr/lib/jvm/openjdk-11 && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'
done


echo "JDK 11 installation complete"
