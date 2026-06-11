#!/bin/bash
read -p "Enter a project name: " INPUT
mkdir -p attendance_tracker_${INPUT}/Helpers
mkdir -p attendance_tracker_${INPUT}/reports
touch attendance_tracker_${INPUT}/attendance_checker.py
touch attendance_tracker_${INPUT}/Helpers/assets.csv
touch attendance_tracker_${INPUT}/Helpers/config.json
touch attendance_tracker_${INPUT}/reports/reports.log
echo "Done! Folder created: attendance_tracker_${INPUT}"
