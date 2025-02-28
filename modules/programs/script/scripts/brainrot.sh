#!/usr/bin/env bash

if (ps aux | grep mpv | grep -v grep > /dev/null); then
    pkill mpv
else
    runbg mpv --loop-playlist  "$HOME/Téléchargements/Cat Vibing Original.mp4"
fi
