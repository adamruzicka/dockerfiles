FROM fedora-runit:22
COPY run /etc/service/sshd/
RUN chmod +x /etc/service/sshd/run && \
    dnf install -y openssh-server
