#!/bin/bash

SOURCE_DIR="/home/maksim/"
BACKUP_DIR="/tmp/backup/"
LOGGER_TAG="my-backup"

/usr/bin/rsync -a --delete "$SOURCE_DIR" "$BACKUP_DIR"

STATUS=$?

if [ $STATUS -eq 0 ]; then
    logger -t $LOGGER_TAG "Backup completed successfully"
else
    logger -t $LOGGER_TAG "Backup FAILED with exit code $STATUS"
fi

exit $STATUS 