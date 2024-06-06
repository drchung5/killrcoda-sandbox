#!/bin/bash
exec > /dev/null 2>&1

echo -ne "\n\tConfiguring the lab envronment " > /dev/tty 2>&1

until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.' > /dev/tty 2>&1
done

echo -ne "\n\tLab environment ready!" > /dev/tty 2>&1

exec > /dev/tty 2>&1