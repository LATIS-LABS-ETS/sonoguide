#!/bin/bash

# Check if "frontend" and "backend" directories exist in the current directory
if [ ! -d "frontend" ] || [ ! -d "backend" ]; then
    echo "Error: 'frontend' and 'backend' directories not found in the current directory."
    exit 1
fi

# Check if Redis is installed
if ! command -v redis-server &> /dev/null; then
    echo "Error: Redis is not installed. Please install Redis and try again."
    exit 1
fi

git submodule init
git submodule update
git submodule update --remote

# Start Redis server in the background on port 6379
gnome-terminal -- bash -c 'redis-server --port 6379 ; exec bash'
sleep 1 

# Navigate to the backend directory and run launch_back.sh in another terminal
cd backend
gnome-terminal -- bash -c './launch_back.sh; exec bash'
sleep 1 

# Navigate to the frontend directory and run launch_front.sh in another terminal
cd ../frontend
gnome-terminal -- bash -c './launch_front.sh; exec bash'
sleep 1 

# Display a success message
echo "All processes started successfully. Your application is now running."

