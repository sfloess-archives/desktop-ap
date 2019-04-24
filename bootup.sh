#!/bin/sh

debdir=/mnt/sda1/debian_armel

mkdir -p $debdir/proc $debdir/sys $debdir/dev $debdir/dev/pts $debdir/tmp

cat /etc/mtab > $debdir/etc/fstab

# ----------------------------------------------------------------------

#chmod -R 755 $debdir

chmod    700 $debdir/etc/ssh
chmod -R 700 $debdir/etc/ssh

rm -rf $debdir/run/screen/*

# ----------------------------------------------------------------------

mount -t devpts none  $debdir/dev/pts

mount -o bind   /     $debdir/mnt/desktop-ap
mount -o bind   /dev  $debdir/dev
mount -o bind   /proc $debdir/proc
mount -o bind   /sys  $debdir/sys
mount -o bind   /tmp  $debdir/tmp

# ----------------------------------------------------------------------

/bin/busybox chroot $debdir $* & 

