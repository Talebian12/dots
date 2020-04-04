#!/bin/bash

STATUS=$(pgrep mpd)

if [ -n ${STATUS+set} ]; then
	mpd
else
	killall mpd
fi
