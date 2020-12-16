FROM mysql:8.0.22

RUN apt update && apt install -y ssh

ARG USER_ID GROUP_ID
RUN groupadd -g ${GROUP_ID} user && useradd -m -u ${USER_ID} -g ${GROUP_ID} user
