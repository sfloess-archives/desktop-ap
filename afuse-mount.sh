#!/bin/bash -x

afuse -s -o nonempty -o allow_other -o mount_template="sshfs -s %r@admin-ap:/home/%r %m" -o unmount_template="fusermount -u -z %m" /home
