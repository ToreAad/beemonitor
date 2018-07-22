#!/bin/bash
cd /home/pi/beemonitor/
DATA=$(am2301)
python upload_data.py DATA
