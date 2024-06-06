#!/bin/bash

addnewuser --disabled-password cassandra-user

apt-get update

sudo apt-get install -y openjdk-11-jdk-headless < /dev/null > /dev/null 

