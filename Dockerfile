FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y python3.10

RUN apt-get install -y python3-pip

CMD ["python3.10", "-m pip install", "--upgrade pip"]

WORKDIR /app

COPY requirements_test.txt requirements_test.txt
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python3.10", "app.py"]
