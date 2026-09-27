# 1. Official Python Lightweight base image
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements first to leverage Docker cache
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application files
COPY . .

# 6. Expose port 5000 for Flask API
EXPOSE 5000

# 7. Command to run the Flask application
CMD ["python", "app.py"]
