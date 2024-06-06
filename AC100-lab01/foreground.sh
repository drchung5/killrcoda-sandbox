#!/bin/bash
exec > /dev/null 2>&1

clear

echo "" > /dev/tty 2>&1
echo "Update package lists"> /dev/tty 2>&1
apt-get update 

echo "" > /dev/tty 2>&1
echo -n "Install JDK 11 " > /dev/tty 2>&1


# Install OpenJDK 11 without prompting for confirmation
sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 2>&1 &

# Loop to check for the existence of JDK installation directories
until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.' > /dev/tty 2>&1
done

echo "" > /dev/tty 2>&1
echo "JDK 11 installation complete" > /dev/tty 2>&1
echo "" > /dev/tty 2>&1

# Restore output to the terminal for the final message
exec > /dev/tty 2>&1