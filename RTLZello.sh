#! /bin/sh

FREQUENCY="156.0"
GAIN="50"
SQUELCH="190"
SAMPLERATE="16"
MODE="fm"

USER="VHF Channel 0"
PASSWORD="RNLIhmcg999"
CHANNEL="VHF CH0"
VOX="1"

TOKEN=`./tokenmanager key.txt WkM6TTZOTVM6MQ==.f1RFt1I679Udosbd1oKr9ov1w0MVxcisO2iU3R0ZcmE=`

rtl_fm -M "$MODE" -f "$FREQUENCY"M -s "$SAMPLERATE"k -g "$GAIN" -l "$SQUELCH" | ./nrad --token "$TOKEN" --user "$USER" --password "$PASSWORD" --channel "$CHANNEL" --audio-source - --vox-threshold "$VOX"
