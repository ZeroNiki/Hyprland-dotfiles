#!/bin/bash

if [ "$1" == "--title" ]; then
    playerctl metadata --format "{{ title }}" 2>/dev/null | cut -c1-25
elif [ "$1" == "--artist" ]; then
    playerctl metadata --format "{{ artist }}" 2>/dev/null | cut -c1-30
elif [ "$1" == "--album" ]; then
    playerctl metadata --format "{{ album }}" 2>/dev/null | cut -c1-25
elif [ "$1" == "--status" ]; then
    status=$(playerctl status 2>/dev/null)
    if [ "$status" == "Playing" ]; then
        echo "󰏤"
    elif [ "$status" == "Paused" ]; then
        echo "󰐊"
    else
        echo "󰓄"
    fi
elif [ "$1" == "--source" ]; then
    playerctl metadata --format "{{ mpris:trackid }}" 2>/dev/null | grep -Eo "spotify|chromium|firefox|mpv" || echo "unknown"
fi
