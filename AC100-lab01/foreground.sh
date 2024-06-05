#!/bin/bash

echo "foreground.sh"

echo -n "Install JDK 11 "

apt-get update 

sudo apt-get install -y openjdk-11-jdk openjdk-11-jdk < "/dev/null" > /dev/null 2>&1

until [[ -e /usr/lib/ && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'
done


echo "JDK 11 installation complete"
