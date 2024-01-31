#!/bin/bash

# Wait for MongoDB to be ready
until mongo --eval "print(\"waiting for connections...\")" 2>/dev/null; do
  sleep 1
done

# Create example collection
mongo --eval "db.yourcollection.insert({ key: 'value' })"

# Display a message
echo "Example collection created successfully"