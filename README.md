# CI/CD GitHub Actions Pipeline

![CI](https://github.com/DeepaliBhosle/ci-cd-github-actions-pipeline/workflows/CI/badge.svg)
![Coverage](https://img.shields.io/badge/coverage-100%25-brightgreen)

This project demonstrates a CI/CD pipeline using GitHub Actions for a Python Flask application with tests and coverage.

## Project Features

- Python Flask app
- Unit tests using pytest
- Code coverage with pytest-cov
- Dockerized application
- CI/CD pipeline with GitHub Actions
- Code formatting checks with black and flake8


## Screenshots

- Coverage Report
![Coverage Report](screenshots/coverage.png)

- GitHub Actions CI Workflow
![Workflow Screenshot](screenshots/workflow.png)


## How to Run Locally

# Create virtual environment
python -m venv venv
source venv/bin/activate  (Linux/Mac)
venv\Scripts\activate     (Windows)

# Install dependencies
pip install -r requirements.txt

# Run tests with coverage
pytest --cov=app tests/
coverage html

# Run the Flask app
python -m flask --app app run


## Docker 

# Build Docker image:
- docker build -t cicd-pipeline-docker .
# Run Docker container:
- docker run -p 5000:5000 cicd-pipeline-docker
(Access the app via: http://127.0.0.1:5000)


## Commit and push
- git add README.md screenshots/
- git commit -m "Add README with badges and coverage screenshots"
- git push origin main


## GitHub Actions CI/CD
- Workflow triggers on push to main branch.
- Steps:
1. Checkout code.
2. Set up Python environment.
3. Install dependencies.
4. Run tests with coverage.
5. Build Docker image.
- Workflow Screenshot:


## Achievements
- Fully containerized Python Flask application using Docker.
- CI/CD workflow using GitHub Actions.
- Automated testing and 100% code coverage with pytest-cov.
- Professional project structure ready for portfolio showcase.





