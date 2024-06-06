#!/bin/bash

echo "Update package lists"  > /dev/tty 2>&1
apt-get update

echo -n "Install JDK 11 "  > /dev/tty 2>&1
sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 

until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'  > /dev/tty 2>&1
done

echo "JDK 11 installation complete"  > /dev/tty 2>&1