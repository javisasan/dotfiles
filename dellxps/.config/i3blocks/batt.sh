#!/usr/bin/bash
#
# Script for battery info block for i3blocks
# Javier Sagra 2022
#

# Battery 0: Discharging, 74%, 02:58:33 remaining
# Battery 0: Charging, 74%, 02:55:14 until charged
# Battery 0: Discharging, 0%, rate information unavailable

command_output=$(acpi)
#command_output="Battery 0: Charging, 11%, 02:55:14 until charged"
#command_output="Battery 0: Dischanging, 12%, 02:55:14 until charged"

percent=$(echo $command_output | awk -F ", " '{print $2}' | awk -F "%" '{print $1}')

if [ ${percent} = 0 ]
then
    echo "<span color=\"#999999\">No Batt</span>"
    exit 0
fi;

warning=""
output="<span color=\"#00ff00\">${percent}%</span>"

if [ $(echo $command_output | awk '{print $3}') = "Charging,"  ]
then
    status_output="<span color=\"#00ff00\">&#8679;</span>"
else
    status_output="<span color=\"#ff0000\">&#8681;</span>"
    discharging="true"
fi;

if [ "${percent}" -lt "35" ]
then
    color=#ff0000
    output="<span color=\"#f9c712\">${percent}%</span>"
fi;

if [ "${percent}" -lt "15" ]
then
    if [ "${discharging}" ]
    then
        warning="<span background=\"#f74242\" color=\"#333333\"><b> LOW BATTERY </b></span> "
    fi;
    #output="<span color=\"#F79494\">${percent}%</span>"
    output="<span color=\"#ff0000\">${percent}%</span>"
fi;

echo "${warning}${status_output}${output}"

