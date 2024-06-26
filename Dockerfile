# Use the official Python image as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
# RUN pip install -r requirements.txt

RUN pip install flask
RUN pip install flask[async]
RUN pip install httpx

# Define the entry point for the container
CMD ["python", "main.py", "runserver", "0.0.0.0:8000"]