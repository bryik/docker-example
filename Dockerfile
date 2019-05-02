# Use an official Python runtime as a parent image.
# I've had problems with Alpine (failing to build node-canvas because of musl),
# but Debian hasn't failed me yet.
FROM python:3.6.8-jessie

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run main.py when the container launches
CMD ["python", "main.py"]