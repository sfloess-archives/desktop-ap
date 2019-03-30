#!/bin/bash

depmod
modprobe fuse

chmod -R 700 /root/.ssh
chmod 775 /run/screen

chmod u+s /usr/bin/sudo
chmod g+s /usr/bin/sudo

#ntpdate pool.ntp.org
#ntpdate admin-ap

/usr/sbin/ntpdate-debian

chmod 700 -R /etc/ssh /var/run/sshd

/etc/init.d/rsyslog    start
/etc/init.d/ntp        start
/etc/init.d/cron       start
/etc/init.d/rpcbind    start
/etc/init.d/postfix    start
/etc/init.d/nis        start
/etc/init.d/ssh        start
/etc/init.d/rsync      start

mkdir -p /mnt/admin-ap

afuse -s -o nonempty -o allow_other -o mount_template="sshfs -s admin-ap:/%r %m" -o unmount_template="fusermount -u -z %m" /mnt/admin-ap
afuse -s -o nonempty -o allow_other -o mount_template="sshfs -s %r@admin-ap:/home/%r %m" -o unmount_template="fusermount -u -z %m" /home

mount -a


