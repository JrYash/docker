# Use the official Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY app.py .

# Install the required Python packages
RUN pip install --no-cache-dir flask numpy pandas

# Expose port 80 to the host machine
EXPOSE 80

# Set the default command to run the Flask app
CMD ["python", "app.py"]
