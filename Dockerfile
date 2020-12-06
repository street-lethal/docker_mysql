FROM mysql:8.0.22

RUN apt update && apt install -y ssh

COPY keys /root/keys
COPY .ssh/config /root/.ssh/config

RUN chmod 600 /root/.ssh/config
RUN chmod 600 /root/keys/*
