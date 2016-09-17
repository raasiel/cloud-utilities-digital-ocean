backup_name=$(date +%F-%H-%M-%S).7z
7z -r /root/backup/$backup_name /root/persist
rclone copy /root/backup/$backup_name onedrive:/cloud-backup/