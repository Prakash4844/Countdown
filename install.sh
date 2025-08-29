#!/usr/bin/env bash
set -e

DEST="/usr/local/bin/countdown"
TMP="/tmp/countdown"

echo "Installing countdown..."

curl -fsSL https://raw.githubusercontent.com/Prakash4844/Countdown/refs/heads/main/countdown.sh -o "$TMP"
chmod +x "$TMP"
sudo mv "$TMP" "$DEST"

echo "✅ Installed! Run: countdown 10s"
