#!/bin/sh

#DEBIAN_DIR=/mnt/sda/debian
#LOG_FILE=/var/log/debian.log

DEBIAN_DIR=/mnt/sda/raspbian
LOG_FILE=/var/log/raspbian.log

echo "------------------------------------------------" >  ${LOG_FILE}
echo "Waiting for USB to become available:  `date`"     >> ${LOG_FILE}
echo "------------------------------------------------" >> ${LOG_FILE}

while [ ! -d "${DEBIAN_DIR}" ]
do
	echo "    USB and Debian unavailable:  `date`" >> ${LOG_FILE}
	sleep 10s
done

echo "------------------------------------------------" >> ${LOG_FILE}
echo "USB is available:  `date`"    >> ${LOG_FILE}
echo "------------------------------------------------" >> ${LOG_FILE}

#/mnt/sda/debian/flossware/flossware.sh
/mnt/sda/raspbian/flossware/flossware.sh

