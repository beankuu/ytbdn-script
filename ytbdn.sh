#!/bin/bash
echo ============================
echo      Youtube Downloader
echo ============================
echo
echo

read -p "link: " INPUT

while [[ $INPUT != [qQ] ]]; do
  $(youtube-dl --ignore-errors --quiet --extract-audio --audio-format mp3 $INPUT) &
  echo 
  read -p "link: " INPUT
done

echo byebye
