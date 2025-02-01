#! /usr/bin/bash

# Get workspace details from sway
workspaces=$(swaymsg -t get_workspaces -r)

# Start the box layout
echo "(box :spacing \"10\" :vexpand true :valign \"center\" :halign \"start\""

# Loop through each workspace, determine if it's focused, and format it for eww
echo "$workspaces" | jq -r '.[] | "\(.name) \(.focused) \(.visible)"' | while read -r name focused visible; do
    # If focused, add the focused class
    if [[ "$focused" == "true" ]]; then
      echo "(eventbox :onclick \"swaymsg workspace number $name\" (box :class \"workspace-focused\"  \"$name\"))"
    elif [[ "$visible" == "true" ]]; then
      echo "(eventbox :onclick \"swaymsg workspace number $name\" (box :class \"workspace-visible\"  \"$name\"))"
    else
      echo "(eventbox :onclick \"swaymsg workspace number $name\" (box :class \"workspace\"  \"$name\"))"
    fi
done

echo ")"


