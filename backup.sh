#!/bin/bash

# Kolla så att vi tar emot exakt 2 argument.
if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# Kolla ifall rsync är installerat
if ! command -v rsync &>/dev/null
then
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again"
    exit 2
fi

# Se datum och lagra det i formatet YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# a = archive mode, v = verbose, b = gör backup ifall den hittar ändringar.
# --dry-run är ett test kommando, radera när du vill köra skarpt.
rsync_options="-avb --backup-dir $2/$current_date --delete" # --dry-run

# rsync_options blir -avb och --backup-dir här ($1 och $2)
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log

