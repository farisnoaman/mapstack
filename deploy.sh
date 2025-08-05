#!/bin/bash

echo "📦 Deploying stack..."

# Load environment variables
export $(grep -v '^#' .env | xargs)

docker compose down
docker compose pull
docker compose up -d

echo "✅ Deployment complete!"
echo "🌐 GraphHopper: https://${GRAPHHOPPER_DOMAIN}"
echo "🌐 Nominatim:   https://${NOMINATIM_DOMAIN}"
echo "🌐 Tileserver:  https://${TILESERVER_DOMAIN}"

