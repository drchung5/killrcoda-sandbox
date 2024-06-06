#!/bin/bash

echo "Update package lists"
apt-get update

echo -n "Install JDK 11 " 
sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 

until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.' 
done

echo "JDK 11 installation complete" 