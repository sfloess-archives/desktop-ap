#!/bin/bash

depmod
modprobe fuse

chmod -R 700 /root/.ssh

ntpdate pool.ntp.org

chmod 700 -R /etc/ssh /var/run/sshd

/etc/init.d/rsyslog    start
/etc/init.d/cron       start
/etc/init.d/rpcbind    start
/etc/init.d/nis        start
/etc/init.d/ssh        start
/etc/init.d/rsync      start

sshfs -o allow_other,default_permissions sfloess@admin-ap:/home/sfloess /mnt/admin-ap/home/sfloess
sshfs -o allow_other,default_permissions root@admin-ap:/opt/backups     /mnt/admin-ap/backups
sshfs -o allow_other,default_permissions root@admin-ap:/opt/media       /mnt/admin-ap/media
sshfs -o allow_other,default_permissions root@admin-ap:/opt/nas         /mnt/admin-ap/nas
sshfs -o allow_other,default_permissions root@admin-ap:/opt/shared      /mnt/admin-ap/shared
sshfs -o allow_other,default_permissions root@admin-ap:/root            /mnt/admin-ap/root

mount -a

