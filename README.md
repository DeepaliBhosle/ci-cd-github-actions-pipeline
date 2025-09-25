# CI/CD Pipeline with GitHub Actions & Docker (Flask App Example)

(https://github.com/<YOUR_USERNAME>/ci-cd-pipeline-docker/actions/workflows/ci.yml/badge.svg)(https://github.com/<YOUR_USERNAME>/ci-cd-pipeline-docker/actions/workflows/ci.yml)

## Overview
This project demonstrates how to build a **CI/CD pipeline** using **GitHub Actions** and **Docker**.  
It includes:
- Automated testing with **Pytest**
- Building a production-ready Docker image
- Pushing the image to **GitHub Container Registry (GHCR)**
- Deployable containerized Flask application

This is an example of how DevOps engineers automate build, test, and release workflows without manual effort.


## Tech Stack
- **Language:** Python (Flask)
- **Containerization:** Docker
- **CI/CD:** GitHub Actions
- **Testing:** Pytest
- **Registry:** GitHub Container Registry (GHCR)


## Project Structure
ci-cd-pipeline-docker/
│── app/
│   └── __init__.py        # Flask application
│── tests/
│   └── test_app.py        # Unit tests (Pytest)
│── requirements.txt       # Dependencies
│── Dockerfile             # Docker build file
│── .dockerignore          # Docker ignore rules
│── .github/
│   └── workflows/
│       └── ci.yml         # GitHub Actions pipeline
│── README.md              # Project documentation


## Getting Started (Local Setup)
# Clone Repository
git clone https://github.com/<YOUR_USERNAME>/ci-cd-pipeline-docker.git
cd ci-cd-pipeline-docker

# Create Virtual Environment & Install Dependencies
python3 -m venv venv
source venv/bin/activate   # (Windows: venv\Scripts\activate)
pip install -r requirements.txt

# Run Tests
pytest -q

#Run Application (Local Dev)
export FLASK_APP=app
flask run --host=0.0.0.0 --port=5000
( App runs at: http://localhost:5000 )

## Docker Setup
# Build Docker Image
docker build -t ci-cd-pipeline-docker:local .

# Run Docker Container
docker run --rm -p 5000:5000 ci-cd-pipeline-docker:local

## GitHub Actions CI/CD Workflow
Runs automatically on:
                       push to main
                       pull_request to main
Jobs:
  Test → Install dependencies & run Pytest
  Build & Push → Build Docker image & push to GHCR
