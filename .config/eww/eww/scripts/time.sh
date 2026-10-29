#! /usr/bin/bash

# Get the current date and time
current_date=$(date '+%a %b %d %I %M %S %p %Y')

# Extract Day, Month, Day (in number) and time in HH:MM:SS (AM/PM)
day=$(echo "$current_date" | awk '{print $1}')
month=$(echo "$current_date" | awk '{print $2}')
day_num=$(echo "$current_date" | awk '{print $3}')
hour_12=$(echo "$current_date" | awk '{print $4}')
minute=$(echo "$current_date" | awk '{print $5}')
second=$(echo "$current_date" | awk '{print $6}')
ampm=$(echo "$current_date" | awk '{print $7}')

# Convert to 24-hour format using `date` command
hour_24=$(date -d "$hour_12:$minute:$second $ampm" +"%H")

# Display the results
echo "$month $day_num ($day) $hour_24:$minute:$second"
