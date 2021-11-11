# Dockerfile : Blueprint for building images
# Image : Template for running containers, 
# [docker build -t image-name.][docker run -t image-name][[docker run -t -i image-name]-i if input needed in the app]
# containers : running process where we ha ve our package project

FROM python:3.8
ADD main.py .
RUN pip install requests beautifulsoup4
CMD ["python", "./main.py"]