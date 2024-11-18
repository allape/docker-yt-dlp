#!/usr/bin/env bash

process_file() {
  local file="$1"
  echo "Processing $file"
  ffmpeg -hide_banner -hwaccel auto -i "$file" -c:v h264 -c:a aac "h264fied/${file%.mp4}.mp4"
}

mkdir -p h264fied

if [ -n "$1" ]; then
  process_file "$1"
  exit 0
fi

for file in *.mp4; do
  process_file "$file"
done
