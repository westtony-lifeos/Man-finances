#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install Node.js linting tools for HTML validation
if ! command -v npx &> /dev/null || ! npx htmlhint --version &> /dev/null 2>&1; then
  npm install -g htmlhint
fi
