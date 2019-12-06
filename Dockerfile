FROM ubuntu
RUN apt update && apt install -y openconnect tmux openssh-client openssh-server
