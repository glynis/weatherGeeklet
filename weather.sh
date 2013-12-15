#!/bin/bash

BASE_DIR="/Users/glynis/Pictures/wallpapers/weatherGeeklet/"
cd "$BASE_DIR"

while true
do
	curl -s http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=BDL > weather.xml
	weather=$(cat weather.xml | grep '<icon>' | tr -d '\t' | python grabIcon.py )
#	weather=$(cat weather.xml | grep '<icon>' | tr -d '\t' | sed 's/^<.*>\([^<].*\)<.*>$/\1/')
#	weather=snow
	echo $weather
	file="$weather.png"
	if [ -s "current.png" ]; then
	rm current.png
	fi
	cp $file current.png
	sleep 300
done
# clear, partlycloudy, mostlycloudy, rain, snow
