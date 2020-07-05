#! /bin/sh

FREQUENCY="156.0"
GAIN="50"
SQUELCH="280"
USER="VHF Channel 0"
PASSWORD="password"
CHANNEL="VHF CH0"

TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJXa002VFRaT1RWTTZNUT09LmYxUkZ0MUk2NzlVZG9zYmQxb0tyOW92MXcwTVZ4Y2lzTzJpVTNSMFpjbUU9IiwiZXhwIjoxNTkzODc4NzgxfQ==.wOQE7lNqSrZm5IuTD8TPxiGKrW+d0Jpd/G9/SfExnVsxK0wOBYeHMc3VFZUIVD9vOGkTEqctQ4y46T+us+C58WCMyqnqZ5F7BYwC7a3SlY0XvFlddmZuEoU0o+h5Lknpp0+uBIvIcYo5q53H3vz12nIjZLJd9UwqgP3RPO8xaz3AkbcMGTnmIDT5DgsKB6ZdZKZt5BLIko9ZbERgwgU+b/tN64jWbyGmlw+cqGMQIMplBuYFQHQYmRpeXrTqfPtVjxvnzXOJi3jpJ8PW24kxvX0Mzx2P5P1/GpSTBgbsiJkv97aZLDBqfWs0qzinfMp6wkM3yb6x3uCXSfOgEPy5CQ=="

pulseaudio -D

rtl_fm -M fm -f "$FREQUENCY"M -s 12k -g "$GAIN" -l "$SQUELCH" | play -r 32k -t raw -e s -b 16 -c 1 -V1 - &

./nrad --token "$TOKEN" --user "$USER" --password "$PASSWORD" --channel "$CHANNEL" --vox-threshold 1
