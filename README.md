# CI/CD Flask Docker Pipeline

[![Python](https://img.shields.io/badge/python-3.12-blue)](https://www.python.org/)
[![Flask](https://img.shields.io/badge/flask-3.1.2-green)](https://flask.palletsprojects.com/)
[![Docker](https://img.shields.io/badge/docker-latest-blue)](https://www.docker.com/)
[![GitHub Actions](https://github.com/DeepaliBhosle/ci-cd-github-actions-pipeline/workflows/CI/badge.svg)](https://github.com/DeepaliBhosle/ci-cd-github-actions-pipeline/actions)

## Project Overview ##

This project demonstrates a complete CI/CD pipeline for a Python Flask application using:

- Flask for the web application.
- Docker for containerization.
- GitHub Actions for CI/CD automation.
- pytest & pytest-cov for testing and coverage.

The pipeline automatically builds the Docker image, runs tests, and generates a **coverage report** on every push.


## Project Structure
cicd-pipeline-docker/
│
├── app/
│ └── init.py # Flask application
│
├── tests/
│ └── test_app.py # Pytest test cases
│
├── Dockerfile # Docker configuration
├── requirements.txt # Python dependencies
├── .github/
│ └── workflows/ci.yml # GitHub Actions workflow
└── README.md



## Getting Started
1. Clone the repository

- git clone https://github.com/DeepaliBhosle/ci-cd-github-actions-pipeline.git
- cd ci-cd-github-actions-pipeline

2. Set up Python virtual environment
- python -m venv venv
- source venv/bin/activate       (Linux/Mac)
- venv\Scripts\activate          (Windows)
- pip install -r requirements.txt

3. Run Flask App locally
- export FLASK_APP=app
- flask run
  ( Visit: http://127.0.0.1:5000 )

4. Run Tests and Generate Coverage
- pytest --cov=app --cov-report html

5. Open the HTML coverage report
- code htmlcov/index.html     (VS Code)
                or
- firefox htmlcov/index.html  (Browser)


6. Docker Setup

# Build Docker image:
- docker build -t cicd-pipeline-docker .
# Run Docker container:
- docker run -p 5000:5000 cicd-pipeline-docker
(Access the app via: http://127.0.0.1:5000)

7. GitHub Actions CI/CD
- Workflow triggers on push to main branch.
  
- Steps:
1. Checkout code.
2. Set up Python environment.
3. Install dependencies.
4. Run tests with coverage.
5. Build Docker image.
   
- Workflow Screenshot:


8. Achievements
- Fully containerized Python Flask application using Docker.
- CI/CD workflow using GitHub Actions.
- Automated testing and 100% code coverage with pytest-cov.
- Professional project structure ready for portfolio showcase.





