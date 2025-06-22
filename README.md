# Swabit - Self-Hosted Habit Tracker

A self-hostable habit tracking application with a GitHub-style heatmap interface and Tinder-like daily habit swiping.

## Quick Start

### Option 1: One-Command Deploy
```bash
git clone <your-repo-url>
cd Swabits
docker compose up -d
```

### Option 2: With Custom Configuration
```bash
git clone <your-repo-url>
cd Swabits
cp .env.example .env
# Edit .env with your preferences
docker compose up -d
```

The application will be available at http://localhost

## Configuration

Create a `.env` file from `.env.example` to customize:

- `JWT_SECRET`: Change this for security (required for production)
- `MAX_USERS`: Maximum number of users allowed to register (default: 10)

## Data Persistence

All habit data is stored in a Docker volume and will persist across container restarts and updates.

## Updating

```bash
git pull
docker compose build --no-cache
docker compose up -d
```

## Architecture

- **Frontend**: React + Vite + TypeScript + Tailwind CSS + shadcn/ui
- **Backend**: Fastify + TypeScript + SQLite
- **Deployment**: Docker + Docker Compose

## Features

- 📊 GitHub-style habit heatmaps
- 📱 Tinder-like daily habit swiping
- 🔒 User authentication
- 📝 Optional habit notes
- 📅 Calendar view for detailed habit history
- 🎨 Customizable heatmap colors
- 🚀 Self-hosted with Docker
- 📦 SQLite database (no external DB required)