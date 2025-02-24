#!/usr/bin/env bash

if (ps aux | grep mpv | grep -v grep > /dev/null); then
    pkill mpv
else
    runbg mpv "$HOME/Téléchargements/Générique i-TV 2024.mp4"
fi
