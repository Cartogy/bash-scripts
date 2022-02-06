#!/bin/bash

URL=$1
BROWSER=$2

echo "Opening URL..."

if [[  $URL =~ ^(https?://)?(www.)?(youtu.be/|youtube.com/(embed/|v/|watch\?v=|watch\?.+&v=|playlist\?list=))([[:alnum:]|_|-]{11})($|&(.+)?) ]]; then
	mpv $URL
	echo "Successfully opened Youtube"

else
	$BROWSER $URL
	exit 1
fi
