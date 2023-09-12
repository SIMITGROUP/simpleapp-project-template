#!/bin/bash
echo "Reprocess jsonschema"
curl http://localhost:8000/api-yaml  > openapi.yaml
simpleapp-generator -c config.json
