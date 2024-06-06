#!/bin/bash

TARGET_DIR="/home/cassandra-userbbbb"
CURRENT_DIR=$(pwd)

echo TARGET_DIR /dev/tty 2>&1
echo CURRENT_DIR /dev/tty 2>&1

if[ "$CURRENT_DIR" == "$TARGET_DIR" ] then
  exit 0
else
  exit 1
fi
