FROM python:3.9-slim-buster

# Author metadata for image
MAINTAINER Hadrian Zefyr "zefyrith@gmail.com"

# Image metadata to describe that the container is listening on port 5000
EXPOSE 5000

# Environment variables
ENV FLASK_APP=at.py
ENV FLASK_RUN_HOST=0.0.0.0

# Prevents python from writing .pyc files to disk
# equivalent to `python -B`
ENV PYTHONDONTWRITEBYTECODE 1

# Prevents python from buffering stdout and stderr
# equivalent to `python -u`
ENV PYTHONUNBUFFERED 1

# Watch for and auto-reload modified files in flask
# This is set in docker-compose.yml
# ENV FLASK_ENV=development

WORKDIR /at
COPY . .
RUN pip install -r requirements.txt


CMD ["flask", "run"]
