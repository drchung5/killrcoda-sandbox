#!/bin/bash

exec > /dev/null 2>&1

echo "foreground.sh"

echo -n "Install JDK 11 "

apt-get update 

sudo apt-get install -y openjdk-11-jdk-headless

# until [[ -e /usr/lib/jvm/java-11-openjdk-amd64 && -e /usr/bin/java ]]
# do
#      sleep 1
#      echo -n '.'
# done

exec > /dev/tty 2>&1

echo "JDK 11 installation complete"
