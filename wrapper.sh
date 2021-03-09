#!/bin/sh

LOG_FILE_PATH="/home/paras/custom-scripts/log.txt"
SCRIPT_FILE_PATH="/home/paras/custom-scripts/trigger-upgrade.sh"
MAX_LINE_COUNT=1000


LOG_FILE_LINE_COUNT=`wc -l < $LOG_FILE_PATH`

if [ $LOG_FILE_LINE_COUNT -gt $MAX_LINE_COUNT ]; then
    echo -n >$LOG_FILE_PATH
fi

sudo sh $SCRIPT_FILE_PATH | tee -a $LOG_FILE_PATH
