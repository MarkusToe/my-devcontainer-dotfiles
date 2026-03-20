#!/bin/bash
set -e

echo "Installing NVM, Node.js, and Gemini CLI..."

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load NVM into the current shell session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install the latest LTS version of Node.js
nvm install 20
nvm use 20

# Install Gemini CLI and Open Code globally
npm install -g @google/gemini-cli opencode-ai@latest
