#!/bin/bash

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
  VSCODE_USER_DIR=~/Library/Application\ Support/Code/User
elif [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "msys" ]]; then
  VSCODE_USER_DIR=~/AppData/Roaming/Code/User
else
  echo "Unsupported OS"
  exit 1
fi

echo "Copying configuration files to: $VSCODE_USER_DIR"

# Copy settings
cp settings.json "$VSCODE_USER_DIR/settings.json"

# Create extensions.json under .vscode
mkdir -p .vscode
cp extensions.json .vscode/extensions.json

echo "✅ Configuración instalada. Reinicia Cursor o VS Code."