#!/bin/bash
echo "Remove backend/frontend"
rm -rf ./backend &&  rm -rf ./frontend 
echo "Generate backend/frontend"
simpleapp-generator -c config.json
echo "start backend and obtain openapi"
cd backend
pnpm start:dev &
sleep 20
cd ..
echo "obtain openapi.yaml"
curl http://localhost:8000/api-yaml  > openapi.yaml
echo "regenerate frontend codes"
simpleapp-generator -c config.json
echo "start frontend"
cd frontend
pnpm dev