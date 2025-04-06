# Use Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
