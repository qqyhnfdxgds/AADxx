#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d3d67044-6725-4213-b239-4dbda2bf28dd"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

