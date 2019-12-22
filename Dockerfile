from ubuntu:18.04

RUN apt update && apt upgrade -y && apt install -y python3 python3-pip python3-venv

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

RUN groupadd -r hnbot && useradd --no-log-init -r -g hnbot hnbot

RUN chown -R hnbot:hnbot .

USER hnbot

CMD make run