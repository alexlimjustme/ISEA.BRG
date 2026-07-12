#!/bin/bash

DATE=$(date +%F-%H-%M-%S)

mkdir -p ~/backups

if tar -czf ~/backups/backup-$DATE.tar.gz /var/www/html
then
    echo "$(date): Backup successful" >> ~/backup.log
else
    echo "$(date): Backup failed" >> ~/backup.log
fi
