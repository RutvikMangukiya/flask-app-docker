# Base image: Using official Python 3.11 image
FROM python:3.11 

# Set working directory inside the container
WORKDIR /app

# Copy all project files to the working directory 
COPY . /app

# Upgrade pip and install required dependencies from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Default command to run the app
CMD ["python", "app.py"]