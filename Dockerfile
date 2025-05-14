# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Set environment variable for Flask app
ENV FLASK_APP=app.py

# Expose the Flask port
EXPOSE 5000

# Run using flask command on 0.0.0.0 (important!)
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
