#!/bin/bash

if[ $(pwd) == "/home/cassandra-user" ]; then
  exit 0
else
  exit 1
fi
