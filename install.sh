#!/bin/bash
set -e

DEST="/usr/local/bin/countdown"

echo "Installing countdown..."
curl -L https://raw.githubusercontent.com/Prakash4844/Countdown/main/countdown.sh -o "$DEST"
chmod +x "$DEST"

echo "✅ Installed! Run: countdown 10s"
