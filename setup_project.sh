#!/bin/bash

trap_handler() {
    echo "Interrupt detected! Cleaning up..."
    tar -czf "attendance_tracker_${INPUT}_archive.tar.gz" "attendance_tracker_${INPUT}"
    rm -rf "attendance_tracker_${INPUT}"
    echo "Archive created and incomplete folder deleted."
    exit 1
}

trap trap_handler SIGINT

read -p "Enter a project name: " INPUT

mkdir -p attendance_tracker_${INPUT}/Helpers
mkdir -p attendance_tracker_${INPUT}/reports

cp attendance_checker.py attendance_tracker_${INPUT}/attendance_checker.py
cp assets.csv            attendance_tracker_${INPUT}/Helpers/assets.csv
cp config.json           attendance_tracker_${INPUT}/Helpers/config.json
cp reports.log           attendance_tracker_${INPUT}/reports/reports.log

echo "Done! Folder created: attendance_tracker_${INPUT}"

read -p "Do you want to update attendance thresholds? (yes/no): " UPDATE

if [ "$UPDATE" = "yes" ]; then
    read -p "Enter new Warning threshold (default 75): " WARNING
    read -p "Enter new Failure threshold (default 50): " FAILURE
    sed -i "s/\"warning\": [0-9]*/\"warning\": ${WARNING}/" attendance_tracker_${INPUT}/Helpers/config.json
    sed -i "s/\"failure\": [0-9]*/\"failure\": ${FAILURE}/" attendance_tracker_${INPUT}/Helpers/config.json
    echo "Thresholds updated!"
fi
