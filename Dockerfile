# Use slim Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir pytest flake8 black

# Copy app and tests
COPY app/ app/
COPY tests/ tests/

# Expose Flask port
EXPOSE 5000

# Default command to run the app
CMD ["python", "-m", "flask", "--app", "app", "run", "--host=0.0.0.0"]
