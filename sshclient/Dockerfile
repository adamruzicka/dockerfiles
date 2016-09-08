FROM fedora:latest
ADD init.sh /
RUN chmod +x /init.sh && \
    dnf install -y openssh openssh-server openssh-clients python iproute && \
    mkdir /root/.ssh && \
    chmod 700 /root/.ssh
ADD authorized_keys /root/.ssh/
CMD /init.sh
