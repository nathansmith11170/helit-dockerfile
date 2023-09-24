FROM python:2

RUN apt update
RUN apt install -y libgirepository1.0-dev libcairo2-dev pkg-config

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
