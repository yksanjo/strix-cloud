# Strix Cloud

Cloud deployment for Security Recon in 60 seconds.

## Features

- 🐳 Docker & Docker Compose support
- ☸️ Kubernetes deployment manifests
- 🔄 Scalable architecture
- 🚀 Production-ready

## Quick Start with Docker Compose

```bash
cd strix-cloud
docker-compose up -d
```

## Kubernetes Deployment

```bash
kubectl apply -f k8s-deployment.yaml
```

## Services

| Service | Port | Description |
|---------|------|-------------|
| strix-web | 3000 | Web UI |
| strix-api | 8080 | REST API |

## Architecture

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   strix-web │────▶│  strix-api  │────▶│ strix-worker│
└─────────────┘     └─────────────┘     └─────────────┘
```

## Environment Variables

- `NODE_ENV` - Environment (production/development)
- `PORT` - Server port
- `API_URL` - API endpoint URL

## Volume Mounts

- `./reports` - Scan reports output directory
