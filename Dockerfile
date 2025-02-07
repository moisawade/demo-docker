# Use an official Python runtime as base image (for simplicity)
FROM python:3.9-slim

# Set working directory to /app
WORKDIR /app

# Copy requirements file into container at /app/requirements.txt location.
COPY requirements.txt .

# Install any needed packages specified in requirements.txt (if applicable)
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code into container at /app/
COPY . .

# Make port 80 available to the world outside this container (if applicable)
EXPOSE 80

# Define environment variable(s) if needed, e.g., for Flask app configuration.
ENV NAME World

# Run app.py when the container launches (assuming you have an app.py script).
CMD ["python", "app.py"]

