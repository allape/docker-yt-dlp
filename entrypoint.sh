#!/usr/bin/env ash
set -e

echo -n "Paste a URL to download: "

while read -r url; do
  yt-dlp "$url"
  echo -n "Paste a URL to download: "
done
