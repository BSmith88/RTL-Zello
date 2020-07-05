#! /bin/sh

FREQUENCY="156.0"
GAIN="50"
SQUELCH="280"
USER="VHF Channel 0"
PASSWORD="RNLIhmcg999"
CHANNEL="VHF CH0"
AUDIO="alsa_output.platform-bcm2835_audio.stereo-fallback.monitor"

TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJXa002VFRaT1RWTTZNUT09LmYxUkZ0MUk2NzlVZG9zYmQxb0tyOW92MXcwTVZ4Y2lzTzJpVTNSMFpjbUU9IiwiZXhwIjoxNTkzOTQ0MzAzfQ==.uCVRcsmUOrMtqAfK16f5NJLAbDaucTxuzVYWPXU74NqMiURyUck+4FPf3d8v7Hs8rbNqzvGtP41pn9+Mf913JuXGpAmi49LgwPqjFHhGuDm+iFo3Zyyy2TAWbiK+JTaixaPE+xgXlFMSzpKY4mc6/nA6DDYN/Dhip2YCAnITf7F5kdmq3VqdDJSvlDrup4OI8sa8TnNNH//K0YwnTSbFHhqd9obhDhbhY7zq/GQJJbpb6Yjl9K5Oed8WZVnqF8erEB9V+0ZzQEfUuQrDGwqcVobdWssYNlJHwvcnzNEEKbq7hastMKFTvJ9/qUdpry0UVZzEWThbhV0zvEjAAfHMMw=="

pulseaudio -D

rtl_fm -M fm -f "$FREQUENCY"M -s 12k -g "$GAIN" -l "$SQUELCH" | play -r 32k -t raw -e s -b 16 -c 1 -V1 - &

./nrad --token "$TOKEN" --user "$USER" --password "$PASSWORD" --channel "$CHANNEL" --audio-source "$AUDIO" --vox-threshold 1
