#!/usr/bin/env bash
set -e

docker run -d \
  --name signalops-postgres \
  -e POSTGRES_USER=signalops \
  -e POSTGRES_PASSWORD=signalops \
  -e POSTGRES_DB=signalops \
  -p 5433:5432 \
  postgres:16
