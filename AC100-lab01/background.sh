#!/bin/bash
echo "Update package lists"
# Install OpenJDK 11 without prompting for confirmation
sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 