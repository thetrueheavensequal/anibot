# We're using Debian Slim Buster image
FROM python:3.10.10-slim-buster

RUN apt update && apt upgrade -y

# Pypi package Repo upgrade
RUN pip install --upgrade pip 

RUN pip3 install -U -r requirements.txt

# Starting Worker
CMD ["python3","-m","anibot"]
