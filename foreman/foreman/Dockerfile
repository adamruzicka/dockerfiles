FROM fedora:latest
ADD runme.sh /runme.sh
ADD resources /home/foreman/
RUN dnf -y install rubygem-bundler git ruby-devel make patch tar gcc gcc-c++ zlib-devel libvirt-devel postgresql-devel redhat-rpm-config
RUN chmod +x /runme.sh && \
    useradd -m foreman -u 1000 -g users && \
    chown -R foreman:users /home/foreman && \
    su foreman -c "cd ~ && bundle install --without mysql:test:mysql2:development:sqlite:jenkins:openid:libvirt"
ENV PATH /home/foreman/bin:$PATH
CMD /runme.sh

