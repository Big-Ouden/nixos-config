#!/usr/bin/env bash

if (ps aux | grep mpv | grep -v grep > /dev/null); then
    pkill mpv
else
    runbg mpv --no-video "$HOME/Téléchargements/ahh-169-roland.mp3"
fi
