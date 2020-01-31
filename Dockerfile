FROM ubuntu
RUN apt update && apt install -y \
  openconnect \
  tmux vim \
  openssh-client openssh-server \
  netcat curl \
  lynx
