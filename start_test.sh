#! /bin/sh

FREQUENCY="156.0"
GAIN="50"
SQUELCH="280"
USER="VHF Channel 0"
PASSWORD="password"
CHANNEL="VHF CH0"
AUDIO="alsa_output.platform-bcm2835_audio.stereo-fallback.monitor"

TOKEN=`./tokenmanager key.txt WkM6TTZOTVM6MQ==.f1RFt1I679Udosbd1oKr9ov1w0MVxcisO2iU3R0ZcmE=`

#pulseaudio -D

rtl_fm -M fm -f "$FREQUENCY"M -s 12k -g "$GAIN" -l "$SQUELCH" | play -r 32k -t raw -e s -b 16 -c 1 -V1 - &

./nrad --token "$TOKEN" --user "$USER" --password "$PASSWORD" --channel "$CHANNEL" --audio-source "$AUDIO" --vox-threshold 1
