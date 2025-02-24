#!/usr/bin/env bash

if (ps aux | grep mpv | grep -v grep > /dev/null); then
    pkill mpv
else
    runbg mpv --no-video "$HOME/Téléchargements/Générique i-TV 2024.mp4"
fi
