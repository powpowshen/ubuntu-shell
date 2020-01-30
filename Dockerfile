FROM danielguerra/ubuntu-xrdp:18.04
RUN apt update && apt install -y \
  openconnect \
  tmux \
  openssh-client openssh-server \
  netcat curl \
  lynx
