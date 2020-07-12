#! /bin/sh

FREQUENCY="156.0"
GAIN="50"
SQUELCH="190"
MODE="fm"

USER="user"
PASSWORD="password"
CHANNEL="channel"
VOX="1"

TOKEN=`./RTL-Zello/tokenmanager RTL-Zello/key.txt <issuer string>`

rtl_fm -M "$MODE" -f "$FREQUENCY"M -s 16k -g "$GAIN" -l "$SQUELCH" | ./RTL-Zello/nrad --token "$TOKEN" --user "$USER" --password "$PASSWORD" --channel "$CHANNEL" --audio-source - --vox-threshold "$VOX"
