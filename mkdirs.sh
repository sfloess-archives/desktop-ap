#!/bin/sh

debdir=/mnt/sda1/debian_armhf

# ----------------------------------------------------------------------

mkdir -p $debdir/opt/media $debdir/opt/backups $debdir/opt/shared $debdir/opt/nas

mount -o bind   /mnt/sda1/nas/media     $debdir/opt/media 
mount -o bind   /mnt/sda1/nas/backups   $debdir/opt/backups
mount -o bind   /mnt/sda1/nas/shared    $debdir/opt/shared
mount -o bind   /mnt/sda1/nas           $debdir/opt/nas

# ----------------------------------------------------------------------

