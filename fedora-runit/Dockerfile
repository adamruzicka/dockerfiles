FROM fedora:22
ADD runit_bootstrap.sh /usr/local/bin/
RUN dnf install -y tar make glibc-static gcc iproute && \
      mkdir /package && \
      curl -L http://smarden.org/runit/runit-2.1.2.tar.gz | tar xzpC /package/ && \
      cd /package/admin/runit-2.1.2 && \
      package/install && \
      dnf erase -y tar make gcc && \
      chmod +x /usr/local/bin/runit_bootstrap.sh && \
      mkdir -p /etc/service
CMD ["/usr/local/bin/runit_bootstrap.sh"]
