#!/bin/bash

TARGET_DIR="/home/cassandra-user"
CURRENT_DIR=$(pwd)

if [ "$CURRENT_DIR" == "$TARGET_DIR" ]; then
  exit 0
else
  exit 1
fi