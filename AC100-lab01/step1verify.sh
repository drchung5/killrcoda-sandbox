#!/bin/bash

TARGET_DIR="/home/cassandra-userbbbb"
CURRENT_DIR=$(pwd)

echo TARGET_DIR
echo CURRENT_DIR

if[ "$CURRENT_DIR" == "$TARGET_DIR" ] then
  exit 0
else
  exit 1
fi
