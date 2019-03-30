sshfs -s -o allow_other,default_permissions,nonempty sfloess@admin-ap:/home/sfloess /mnt/admin-ap/home/sfloess
sshfs -s -o allow_other,default_permissions,nonempty root@admin-ap:/etc             /mnt/admin-ap/etc
sshfs -s -o allow_other,default_permissions,nonempty root@admin-ap:/root            /mnt/admin-ap/root
sshfs -s -o allow_other,default_permissions          root@admin-ap:/opt/backups     /mnt/admin-ap/backups
sshfs -s -o allow_other,default_permissions          root@admin-ap:/opt/media       /mnt/admin-ap/media
sshfs -s -o allow_other,default_permissions          root@admin-ap:/opt/nas         /mnt/admin-ap/nas
sshfs -s -o allow_other,default_permissions          root@admin-ap:/opt/shared      /mnt/admin-ap/shared
