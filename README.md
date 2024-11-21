# Advanced DevOps Project

[![CI/CD Pipeline](https://github.com/nived2/simplcicd/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/nived2/simplcicd/actions)

A production-ready DevOps project using Docker, Flask, and GitHub Actions.

## Features

- Flask web application with health checks
- Multi-stage Docker builds for optimization
- Continuous Integration/Continuous Deployment with GitHub Actions
- Unit testing with pytest
- Environment configuration management
- Docker health checks
- Production-ready with Gunicorn

## Prerequisites

- Docker
- Docker Compose
- Python 3.9+
- Git

## Development

1. Clone the repository:
```bash
git clone <your-repo-url>
cd <repo-name>
```

2. Create a virtual environment and install dependencies:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: .\venv\Scripts\activate
pip install -r requirements.txt
```

3. Run tests:
```bash
python -m pytest tests/
```

4. Run the application locally:
```bash
python app.py
```

## Docker Development

1. Build and start the container:
```bash
docker-compose up --build
```

2. Access the application:
- Main application: http://localhost:5000
- Health check: http://localhost:5000/health

## CI/CD Pipeline

The project includes a GitHub Actions workflow that:
1. Runs unit tests
2. Builds the Docker image
3. Tests the Docker container
4. (Optional) Deploys to Docker Hub or your preferred cloud provider

## Production Deployment

For production deployment:
1. Set appropriate environment variables
2. Use the multi-stage Docker build
3. Enable health checks
4. Configure your cloud provider's deployment settings

## Monitoring

- Health check endpoint: `/health`
- Docker health check is configured in the Dockerfile
- Container logs available via `docker-compose logs`

## Stopping the Application

```bash
docker-compose down
