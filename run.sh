#!/bin/bash
cd /home/pi/beemonitor/
FILEDATE=$(date + "%Y-%m-%d")
DATADATE=$(date + "%Y-%m-%d_%H%M")
DATA=$(am2301)
echo DATADATE DATA >> DATA
#python upload_data.py DATA
