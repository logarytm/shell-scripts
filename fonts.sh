#!/bin/bash
# gets my favorite fonts
set -e
rm -rvf /tmp/plex
wget -c "https://github.com/IBM/plex/releases/download/v1.2.3/TrueType.zip" \
    -O /tmp/plex.zip
mkdir -pv /tmp/plex
cd /tmp/plex
rm -rvf $HOME/.local/share/fonts/ibm-plex/
unzip /tmp/plex.zip
mv -v TrueType $HOME/.local/share/fonts/ibm-plex
