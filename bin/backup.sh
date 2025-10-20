#!/bin/bash

# https://www.baeldung.com/linux/rsync-incremental-backups

TODAY=`date +%Y-%m-%d`
SRC="$1"
DEST="$2"
LATEST="latest"

if [[ -z "$SRC" ]]
then
    echo "[ERROR] The source directory parameter is absent"
    exit 1
fi

if [[ -z "$DEST" ]]
then
    echo "[ERROR] The destination parameter is absent"
    exit 1
fi

TARGET="${DEST}/${TODAY}"
echo -e "[DEBUG] Initiating the backup from ${SRC} to ${DEST} for ${TODAY}."

if [[ ! -d "${TARGET}" ]]
then
    mkdir "${TARGET}"
    echo -e "[DEBUG] Backup target : ${TARGET}"
elif [[ ! -z `find "${TARGET}" -type d -empty &>/dev/zero` ]]
then
    echo "[ERROR] Backup target exists and contains some files. Aborting the backup"
    exit 1
else
    echo "[DEBUG] Backup target already exists"
fi

OPTS="-azvP --mkpath --delete"

if [[ ! -L "${DEST}/${LATEST}" ]] 
then
    echo "[WARN] Latest dir was not found in ${DEST}. Performing initial complete backup."
else 
    OPTS="${OPTS} --link-dest ${DEST}/${LATEST}"
fi

RESULT_OF_RSYNC=`rsync ${OPTS} ${SRC} ${TARGET}`

echo "$RESULT_OF_RSYNC"

PREV_RES=$?

if [[ ${PREV_RES} -eq "0" ]]
then
    echo -e "[DEBUG] Backup completed successfully"
    `rm -f ${DEST}/${LATEST}`
    `ln --symbolic ${TODAY} $DEST/${LATEST}`
else
    echo -e "[ERROR] There is an error during backup"
exit "${PREV_RES}"
fi
