backup_name=$(date +%F-%H-%M-%S).zip
zip -r /root/backup/$backup_name /root/persist
rclone copy /root/backup/$backup_name onedrive:/cloud-backup/