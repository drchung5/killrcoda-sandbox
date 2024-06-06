#!/bin/bash
exec > /dev/null 2>&1

echo -n "Configuring lab envronment "

until [[ -e /usr/lib/jvm && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'  > /dev/tty 2>&1
done

echo "Lab environment ready"  > /dev/tty 2>&1

exec > /dev/tty 2>&1