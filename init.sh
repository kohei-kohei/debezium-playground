#!/bin/bash

set -e

echo '# docker compose down -v'
docker compose down -v

echo ''
echo '# docker compose up -d'
docker compose up -d

echo ''
echo '# wait for 30 seconds'
sleep 30

echo ''
echo '# setup Debezium connector'
curl -X POST http://localhost:8083/connectors \
     -H "Accept:application/json" \
     -H "Content-Type:application/json" \
     -d @debezium/connector.json
