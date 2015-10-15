#!/bin/sh
wget https://dl.google.com/chrome/mac/dev/GoogleChrome.dmg
osascript -e 'quit app "Google Chrome"'
hdiutil attach GoogleChrome.dmg
