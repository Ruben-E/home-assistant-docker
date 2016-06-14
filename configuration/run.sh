#!/bin/bash
sed -i -e 's@_MYSENSORS_GATEWAY_IP_@'"$MYSENSORS_GATEWAY_IP"'@g' /config/configuration.yaml
sed -i -e 's@_MYSENSORS_GATEWAY_PORT_@'"$MYSENSORS_GATEWAY_PORT"'@g' /config/configuration.yaml

python -m homeassistant --config /config
