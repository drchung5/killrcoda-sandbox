#!/bin/bash

show_progress()
{
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  echo -n "Progress..."
  printf "    \b\b\b\b"
  echo ""
  echo "Done"
}

show_progress
sleep 1
clear
printf "\033[0;32mYour Interactive Bash Terminal.\033[0m\n"