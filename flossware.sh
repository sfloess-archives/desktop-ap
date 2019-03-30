#!/bin/sh

echo "Running flossware `date`" > /tmp/flossware.log

/mnt/sda1/debian_armel/flossware/bootup.sh /flossware/startup.sh >> /tmp/flossware.log &

echo "Done running flossware `date`" >> /tmp/flossware.log
