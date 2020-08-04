FROM ubuntu
RUN apt update && apt install -y \
  openconnect \
  vim \
  openssh-client openssh-server
RUN bash -c "ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null"
RUN cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys
RUN echo "service ssh start && ssh -o \"StrictHostKeyChecking no\" -N -D 0.0.0.0:33128 root@localhost" > start-sshd-n-listen.sh

ENTRYPOINT ["/bin/bash", "start-sshd-n-listen.sh"]
