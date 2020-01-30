FROM danielguerra/ubuntu-xrdp
RUN apt update && apt install -y \
  openconnect \
  tmux \
  openssh-client openssh-server \
  netcat curl \
  lynx
