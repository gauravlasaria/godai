#!/data/data/com.termux/files/usr/bin/bash
rsync -az ~/godai/storage/ ~/godai/backup/
echo "Backup synced at $(date)" >> ~/godai/logs/cloudsync.log
