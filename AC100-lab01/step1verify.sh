#!/bin/bash

if [ "$(whoami)" == "root" ]; then
  exit 0
else
  exit 1
fi