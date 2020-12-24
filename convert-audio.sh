#! /bin/bash

for file in mp3/*.mp3; do
	basename="$(basename "$file" .mp3)"
    ffmpeg -i "$file" -c:a libgsm -ar 8000 -ab 13000 -ac 1 -f gsm gsm/"$basename".gsm

done

echo "done"
