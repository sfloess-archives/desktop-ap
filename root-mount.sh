#!/bin/bash

mkdir -p /mnt/admin-ap/root

sshfs -s -o allow_other,default_permissions,nonempty,reconnect root@admin-ap:/root /mnt/admin-ap/root
