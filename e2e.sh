#!/bin/bash

touch diplomka-backend/.env.bak
cat diplomka-backend/.env > diplomka-backend/.env.bak
cat diplomka-backend/.env.testing > diplomka-backend/.env

rm diplomka-backend/database.qa.sqlite
npx concurrently --kill-others -n server,e2e "cd diplomka-backend && npm run start" "cd diplomka-frontend && npm run e2e"
rm diplomka-backend/database.qa.sqlite

cat diplomka-backend/.env.bak > diplomka-backend/.env
rm diplomka-backend/.env.bak