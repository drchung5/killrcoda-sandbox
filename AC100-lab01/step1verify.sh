#!/bin/bash

if [ "$(pwd)" == "/home/cassandra-user" ]; then
  echo 0
else
  echo 1
fi