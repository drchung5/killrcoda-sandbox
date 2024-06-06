#!/bin/bash
exec > /dev/null 2>&1

echo -ne "\n\tConfiguring lab envronment " > /dev/tty 2>&1

until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.' > /dev/tty 2>&1
done

echo -e "\n\tLab environment ready!\n"  > /dev/tty 2>&1

exec > /dev/tty 2>&1