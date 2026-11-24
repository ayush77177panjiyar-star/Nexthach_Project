#!/bin/sh
set -e

# Use Render's dynamically assigned PORT if set, otherwise default to 8000
PORT="${PORT:-8000}"
HOST="${HOST:-0.0.0.0}"

echo "Starting WhisperLiveKit on ${HOST}:${PORT}..."

# Execute wlk with bound host and port, forwarding any additional CMD arguments
exec wlk --host "$HOST" --port "$PORT" "$@"
