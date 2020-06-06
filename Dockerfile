# Use an official Python runtime as a parent image
FROM jupyter/minimal-notebook
MAINTAINER Upendra Devisetty <upendra@cyverse.org>
LABEL Description "This Dockerfile is used to build a scikit-learn’s decision tree image"

# Set the working directory to /app
WORKDIR /app

# Copy requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the app.py script into the container at /app
COPY app.py .

# Reset the working directory to /
WORKDIR /


