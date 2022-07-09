#!/bin/sh

## Hvad giver det her wait-for halløj. Hvorfor en er seperat fil nødvendig?
echo "Waiting for MongoDB to start..."
./wait-for db:27017 

echo "Migrating the databse..."
npm run db:up 

echo "Starting the server..."
npm start 