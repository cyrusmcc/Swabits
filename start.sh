#!/bin/bash

# Swabit Easy Deploy Script

echo "🌟 Starting Swabit Habit Tracker..."

# Check if .env exists, if not create from example
if [ ! -f .env ]; then
    echo "📋 Creating .env from example..."
    cp .env.example .env
    echo "⚠️  Please edit .env file to set your JWT_SECRET before production use!"
fi

# Start the application
echo "🚀 Starting containers..."
docker compose up -d

echo "✅ Swabit is starting up!"
echo "🌐 Access the application at: http://localhost"
echo "📊 View logs with: docker compose logs -f"
echo "🛑 Stop with: docker compose down"