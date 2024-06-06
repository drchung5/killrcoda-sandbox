#!/bin/bash
exec > /dev/null 2>&1

# Echo statements to indicate progress
echo "*** foreground.sh ***" > /dev/tty 2>&1

# Indicate start of JDK 11 installation
echo "Install JDK 11" > /dev/tty 2>&1

# Update package lists
apt-get update 

# Install OpenJDK 11 without prompting for confirmation
sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 2>&1

# Loop to check for the existence of JDK installation directories
until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo '.' > /dev/tty 2>&1
done

# Restore output to the terminal for the final message
exec > /dev/tty 2>&1

echo "JDK 11 installation complete"
