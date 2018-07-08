#!/bin/sh

debdir=/mnt/sda/debian-9.4_stretch_armel

mkdir -p $debdir/proc $debdir/sys $debdir/dev $debdir/dev/pts $debdir/tmp

cat /etc/mtab > $debdir/etc/fstab

# ----------------------------------------------------------------------

chmod -R 755 $debdir

chmod -R 700 $debdir/etc/ssh

rm -rf $debdir/run/screen/*

# ----------------------------------------------------------------------

mount -t devpts none  $debdir/dev/pts

mount -o bind   /     $debdir/host
mount -o bind   /dev  $debdir/dev
mount -o bind   /proc $debdir/proc
mount -o bind   /sys  $debdir/sys
mount -o bind   /tmp  $debdir/tmp

# ----------------------------------------------------------------------

/bin/busybox chroot $debdir $*

exit $?

