#!/bin/bash
cd /home/pi/beemonitor/
FILEDATE=$(date +"%Y-%m-%d").txt
DATADATE=$(date +"%Y-%m-%d %H:%M:%S")
DATA=$(am2301)
echo $DATADATE  $DATA >> "$FILEDATE"
python upload_data.py $FILEDATE
