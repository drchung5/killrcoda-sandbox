#!/bin/bash

# Suppress output of the script
exec > /dev/null 2>&1

# Echo statements to indicate progress
echo "foreground.sh"

exec > /dev/tty 2>&1

# Indicate start of JDK 11 installation
echo -n "Install JDK 11 "

# Update package lists
apt-get update > /dev/null 2>&1

# Install OpenJDK 11 without prompting for confirmation
sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 2>&1

# Loop to check for the existence of JDK installation directories
until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'
done

# Restore output to the terminal for the final message
# exec > /dev/tty 2>&1

# Final message to indicate completion of JDK 11 installation
echo "JDK 11 installation complete"
