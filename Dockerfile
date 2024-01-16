# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Update and install required packages
RUN apt-get update && \
    apt-get install -y python3.8 python3-pip

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python3", "app.py"]