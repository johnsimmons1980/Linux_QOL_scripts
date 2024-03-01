#!/bin/bash

# Get the sink input index ID for Google Chrome
sink_input_index=$(pactl list sink-inputs | grep -B 20 "application.name = \"Google Chrome\"" | awk '/Sink Input/ {print $3}' | tr -d '#')

# Mute the application
pactl set-sink-input-mute "$sink_input_index" toggle
