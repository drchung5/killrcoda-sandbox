#!/bin/bash 
exec > /dev/null 2>&1
su cassandra-user 
cd /home/cassandra-user 
exec > /dev/tty 2>&1
pwd