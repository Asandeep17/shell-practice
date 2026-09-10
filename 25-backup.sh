#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/backup.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # 14 days default value if not supplied by user

# Ensure logs folder exists first
mkdir -p "$LOGS_FOLDER"

if [ $USERID -ne 0 ]; then 
    echo -e "$R Please run this script with root user access $N" | tee -a "$LOGS_FILE"
    exit 1
fi

USAGE(){
    echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR> [DAYS (default 14)] $N"
    exit 1
}

# Check argument count
if [ $# -lt 2 ]; then
    USAGE
fi

# Check source directory existence
if [ ! -d "$SOURCE_DIR" ]; then 
    echo -e "$R $SOURCE_DIR does not exist $N" | tee -a "$LOGS_FILE"
    exit 1
fi

# Check destination directory existence
if [ ! -d "$DEST_DIR" ]; then 
    echo -e "$R $DEST_DIR does not exist $N" | tee -a "$LOGS_FILE"
    exit 1
fi

echo -e "$G Validation successful. Proceeding with backup... $N" | tee -a "$LOGS_FILE"