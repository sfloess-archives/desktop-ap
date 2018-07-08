#!/bin/sh

echo "Running flossware `date`" > /tmp/flossware.log

/mnt/sda/debian-9.4_stretch_armel/flossware/bootup.sh /flossware/startup.sh >> /tmp/flossware.log &

echo "Done running flossware `date`" >> /tmp/flossware.log
