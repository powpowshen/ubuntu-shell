FROM ubuntu
RUN apt update && apt install openconnect tmux openssh-client openssh-server && service ssh start
