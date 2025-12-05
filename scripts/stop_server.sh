#!/bin/bash

APP_DIR="$HOME/dorandoran-be"

cd "$APP_DIR"

if [ ! -f docker-compose.yml ]; then
  exit 0
fi

if [ -n "$(docker compose ps -q)" ]; then
  docker compose down || true
fi
