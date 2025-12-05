#!/bin/bash

APP_DIR="$HOME/dorandoran-be"

cd "$APP_DIR"

if [ ! -f docker-compose.yml ]; then
  exit 0
fi

CONTAINERS=$(docker compose ps -q >/dev/null 2>&1)

if [ -n "$CONTAINERS" ]; then
  docker compose down || true
fi
