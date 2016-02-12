#!/bin/sh

echo "Source (Mongodb): $M2E_SOURCE"
echo "Destination (Elasticsearch): $M2E_DESTINATION"
echo "Namespace: $M2E_NAMESPACE"

sed -i \
  -e "s^{{M2E_SOURCE}}^$M2E_SOURCE^g" \
  -e "s^{{M2E_DESTINATION}}^$M2E_DESTINATION^g"  \
  -e "s^{{M2E_NAMESPACE}}^$M2E_NAMESPACE^g" \
  config.yml

transporter run --config config.yml application.js
